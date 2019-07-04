
# modeling
sample_factor1_file_key = "datalake/data/InteligenciaRiesgos/M&M/MCV/SAMPLES/sample_da_dev2.csv"
_sample_factor2_file_key = "datalake/data/InteligenciaRiesgos/M&M/MCV/SAMPLES/sample_cv_da06_dev2.csv"

sample_factor1 = retrievs3(sample_factor1_file_key, index_col=['fecha', 'rfc'])
_sample_factor2 = retrievs3(_sample_factor2_file_key, index_col=['fecha', 'rfc'])


dabm_factor1_rate = sample_factor1_stats['mean'].sum()/sample_factor1_stats['mean'].size
_cvbm_factor2_rate = _sample_factor2_stats['mean'].sum()/_sample_factor2_stats['mean'].size

display('Rate of dabm=1 on factor1: {} of {}'.format(
    dabm_factor1_rate,
    int(sample_factor1_stats['count'].sum())
))

display('Rate of cvbm=1 on _factor2: {} of {}'.format(
    _cvbm_factor2_rate,
    int(_sample_factor2_stats['count'].sum())
))


sample_factor1_imputer = prp.Imputer(missing_values='NaN', strategy='median', axis=0, verbose=1)
_sample_factor2_imputer = prp.Imputer(missing_values='NaN', strategy='median', axis=0, verbose=1)
sample_factor1_scaler = prp.RobustScaler()
_sample_factor2_scaler = prp.RobustScaler()

# target and features
# TODO: Improve selection of features, depends on sampling generation
factor1_model_features = sample_factor1.drop([target_name, factor1_target_name], axis=1).copy()
_factor2_model_features = _sample_factor2.drop(
    [factor2_target_name] + list(_sample_factor2.columns.difference(sample_factor1.columns)),
    axis=1
).copy()

factor1_target = sample_factor1[[factor1_target_name]]
_factor2_target = _sample_factor2[[factor2_target_name]]

# impute and scale
factor1_model_features.loc[:,:] = sample_factor1_imputer.fit_transform(factor1_model_features.loc[:,:].values)
_factor2_model_features.loc[:,:] = _sample_factor2_imputer.fit_transform(_factor2_model_features.loc[:,:].values)

factor1_model_features.loc[:,:] = sample_factor1_scaler.fit_transform(factor1_model_features.loc[:,:].values)
_factor2_model_features.loc[:,:] = _sample_factor2_scaler.fit_transform(_factor2_model_features.loc[:,:].values)

# splitted dmatrices
X_train_factor1, X_test_factor1, y_train_factor1, y_test_factor1 = train_test_split(
    factor1_model_features, 
    factor1_target,
    test_size=0.1, 
    random_state=1234, 
    stratify=factor1_target
)
factor1_columns = factor1_model_features.columns

dtrain_factor1 = xgb.DMatrix(data=X_train_factor1,label=y_train_factor1, feature_names=factor1_columns)
dtest_factor1 = xgb.DMatrix(data=X_test_factor1,label=y_test_factor1, feature_names=factor1_columns)

_X_train_factor2, _X_test_factor2, _y_train_factor2, _y_test_factor2 = train_test_split(
    _factor2_model_features, 
    _factor2_target,
    test_size=0.1, 
    random_state=1234, 
    stratify=_factor2_target
)
_factor2_columns = _factor2_model_features.columns

_dtrain_factor2 = xgb.DMatrix(data=_X_train_factor2,label=_y_train_factor2, feature_names=_factor2_columns)
_dtest_factor2 = xgb.DMatrix(data=_X_test_factor2,label=_y_test_factor2, feature_names=_factor2_columns)

# bayesian optimized parameters
factor1_bayes_params = {
    'booster' : 'gbtree',
    'objective' : 'binary:logistic',
    'eta' : 0.1,
    'nthread' : 2*cores,
    'silent' : True,
    'eval_metric': 'auc',
    'scale_pos_weight': scale_pos_weight(dabm_factor1_rate),
    # --- bayes optimized ---
    'colsample_bytree': 0.78486496258249, 
    'gamma': 1.3416194906259393, 
    'lambda': 4.002705467998576, 
    'max_delta_step': 69, 
    'max_depth': 9, 
    'min_child_weight': 14.640770482947826, 
    'subsample': 0.742214289016752
}
_factor2_bayes_params = {
    'booster' : 'gbtree',
    'objective' : 'binary:logistic',
    'eta' : 0.1,
    'nthread' : 2*cores,
    'silent' : True,
    'eval_metric': 'auc',
    'scale_pos_weight': scale_pos_weight(_cvbm_factor2_rate),
    # --- bayes optimized ---
    'colsample_bytree': 0.4893499025965577, 
    'gamma': 9.6369356046785, 
    'lambda': 6.257624020727219, 
    'max_delta_step': 5, 
    'max_depth': 9, 
    'min_child_weight': 0.10142454877904994, 
    'subsample':0.629913870915513
}

# trains
evals = [(dtest_factor1, 'eval')]
booster_factor1 = xgb.train(
    factor1_bayes_params, 
    dtrain_factor1, 
    num_round, 
    evals, 
    feval= lambda x,y: val_func_max(x,y,True)
)  
feat_imp_factor1 = get_xgb_feat_importances(booster_factor1)

evals = [(_dtest_factor2, 'eval')]
_booster_factor2 = xgb.train(
    _factor2_bayes_params, 
    _dtrain_factor2, 
    num_round, 
    evals, 
    feval=lambda x,y: val_func_max(x,y,True)
)  
_feat_imp_factor2 = get_xgb_feat_importances(_booster_factor2)



# testing
test_file_key = "datalake/data/InteligenciaRiesgos/M&M/MCV/TESTSET/test_201808.csv"
test_obj = s3_bucket_resource.Object(test_file_key).get()
test = pd.read_csv(io.BytesIO(test_obj['Body'].read()), index_col=['fecha', 'rfc'])
test['dabm'] = test['dalabel'].apply(lambda y: 0 if y == 7 else 1)

factor1_test = test[test['dalabel'] != 0].copy(deep=True)
_factor2_test = test[test['dalabel'] != 7].copy(deep=True)

# --------------------------------------------------------------
factor1_validation_features = factor1_test[factor1_columns].copy(deep=True)

factor1_validation_features.loc[:,:] = sample_factor1_imputer.transform(factor1_validation_features.loc[:,:].values)
factor1_validation_features.loc[:,:] = sample_factor1_scaler.transform(factor1_validation_features.loc[:,:].values)

factor1_validation_target = factor1_test[factor1_target_name]
dval_factor1 = xgb.DMatrix(
    data=factor1_validation_features,
    label=factor1_validation_target, 
    feature_names=factor1_columns
)

_factor1_factor2_validation_features = factor1_test[_factor2_columns].copy(deep=True)

_factor1_factor2_validation_features.loc[:,:] = _sample_factor2_imputer.transform(_factor1_factor2_validation_features.loc[:,:].values)
_factor1_factor2_validation_features.loc[:,:] = _sample_factor2_scaler.transform(_factor1_factor2_validation_features.loc[:,:].values)

_factor1_factor2_validation_target = factor1_test[target_name]
_dval_factor1_factor2 = xgb.DMatrix(
    data=_factor1_factor2_validation_features,
    label=_factor1_factor2_validation_target, 
    feature_names=_factor2_columns
)

# --------------------------------------------------------------

val_target_factor1_probs = booster_factor1.predict(dval_factor1)
_val_target_factor2_probs = _booster_factor2.predict(_dval_factor1_factor2)

bayes_model = pd.DataFrame({
    'cvbm': factor1_test[target_name],
    'dabm': factor1_test['dabm'],
    # 'xgbprobs': pd.Series(booster_factor1_target.predict(dval_factor1_target), index=factor1_test.index),
    'bys0probs': pd.Series(val_target_factor1_probs * _val_target_factor2_probs, index=factor1_test.index),
    # 'bys1probs': pd.Series(_val_target_factor1_probs * _val_target_factor2_probs, index=factor1_test.index),
    # 'bys00probs': pd.Series(val_target_factor1_probs * val_target_factor2_bayes_probs, index=factor1_test.index),
    # 'bys01probs': pd.Series(_val_target_factor1_probs * val_target_factor2_bayes_probs, index=factor1_test.index)
})

bys0percents = np.percentile(bayes_model['bys0probs'], [25,50,75,95,99])

bys0percents = np.percentile(bayes_model['bys0probs'], [25,50,75,95,99])
bys0_nulo = bayes_model['bys0probs'] <= bys0percents[0]
bys0_muybajo = (bayes_model['bys0probs'] > bys0percents[0])&(bayes_model['bys0probs'] <= bys0percents[1])
bys0_bajo = (bayes_model['bys0probs'] > bys0percents[1])&(bayes_model['bys0probs'] <= bys0percents[2])
bys0_medio = (bayes_model['bys0probs'] > bys0percents[2])&(bayes_model['bys0probs'] <= bys0percents[3])
bys0_medio2 = (bayes_model['bys0probs'] > bys0percents[3])&(bayes_model['bys0probs'] <= bys0percents[4])
bys0_alto = bayes_model['bys0probs'] > bys0percents[4]

display(bayes_model[bys0_nulo]['cvbm'].mean())
display(bayes_model[bys0_muybajo]['cvbm'].mean())
display(bayes_model[bys0_bajo]['cvbm'].mean())
display(bayes_model[bys0_medio]['cvbm'].mean())
display(bayes_model[bys0_medio2]['cvbm'].mean())
display(bayes_model[bys0_alto]['cvbm'].mean())



# qualify
rfc_decrypt = pd.read_csv('rfcmayo.csv', index_col=['rfc'])

fecha = 201905
test_file_key = "datalake/data/InteligenciaRiesgos/M&M/MCV/TESTSET/test_{}.csv".format(fecha)
test_obj = s3_bucket_resource.Object(test_file_key).get()
test = pd.read_csv(io.BytesIO(test_obj['Body'].read()), index_col=['fecha', 'rfc'])
# test['dabm'] = test['dalabel'].apply(lambda y: 0 if y == 7 else 1)

factor1_test = test[test['dalabel'] != 0].copy(deep=True)

factor1_validation_features = factor1_test[factor1_columns].copy(deep=True)

factor1_validation_features.loc[:,:] = sample_factor1_imputer.transform(factor1_validation_features.loc[:,:].values)
factor1_validation_features.loc[:,:] = sample_factor1_scaler.transform(factor1_validation_features.loc[:,:].values)

# factor1_validation_target = factor1_test[factor1_target_name]
dval_factor1 = xgb.DMatrix(
    data=factor1_validation_features,
    # label=factor1_validation_target, 
    feature_names=factor1_columns
)

_factor1_factor2_validation_features = factor1_test[_factor2_columns].copy(deep=True)

_factor1_factor2_validation_features.loc[:,:] = _sample_factor2_imputer.transform(_factor1_factor2_validation_features.loc[:,:].values)
_factor1_factor2_validation_features.loc[:,:] = _sample_factor2_scaler.transform(_factor1_factor2_validation_features.loc[:,:].values)

# _factor1_factor2_validation_target = factor1_test[target_name]
_dval_factor1_factor2 = xgb.DMatrix(
    data=_factor1_factor2_validation_features,
    # label=_factor1_factor2_validation_target, 
    feature_names=_factor2_columns
)

# calulate probabilities
val_target_factor1_probs = booster_factor1.predict(dval_factor1)
_val_target_factor2_probs = _booster_factor2.predict(_dval_factor1_factor2)

bayes_model = pd.DataFrame({
    # 'cvbm': factor1_test[target_name],
    'bys0probs': pd.Series(val_target_factor1_probs * _val_target_factor2_probs, index=factor1_test.index),
})
bayes_model.index=bayes_model.index.droplevel('fecha')
bys0percents = np.percentile(bayes_model['bys0probs'], [25,50,75,95,99])
bayes_model['riesgo'] = bayes_model['bys0probs'].apply(
    lambda x: 'NULO' if x <= bys0percents[0]
    else ('MUY BAJO' if x <= bys0percents[1]
         else ('BAJO' if x <= bys0percents[2]
              else ('MEDIO' if x <= bys0percents[3]
                   else ('MEDIO2' if x <= bys0percents[4]
                        else 'ALTO'
                   )
              )
         )
    )
)
print(bayes_model.shape)
res = pd.concat([bayes_model, rfc_decrypt], axis=1, join='inner')
print(res.shape)

# write csv
res.rename(columns={'rfc_decrypted': 'rfc', 'bys0probs': 'probs'}, inplace=True)
res[['rfc', 'probs', 'riesgo']].to_csv('qualify/ql_{}.csv'.format(fecha), index=False)