library(BVSNLP)
library(aws.s3)

prefix <- "s3://boi-banregio/datalake/data/InteligenciaRiesgos/M&M"

sample_key <- "MCV/DATASETS_3/JAT_MCV_VAR_VARIABLES_SELECCION/SAMPLES/STRATEGY2_PRP.csv"

object <- paste(prefix, sample_key, sep = "/")

lectura <- aws.s3::s3read_using(read.csv, object=object, sep = ',')  # , header = FALSE, col.names =c()) 

y <- lectura[, "BMI"]

X <- data.matrix(lectura[, 3:100])


feat_sel <- bvs(X, y, prep = FALSE, fixed_cols = NULL, eff_size = 0.5,
                family = "logistic", hselect = FALSE, nlptype = "piMOM",
                r = 1, tau = 0.25, niter = 30, mod_prior = "beta",
                inseed = NULL, cplng = FALSE, ncpu = 4, parallel.MPI = FALSE)

coefs = unname(feat_sel$beta_hat)

feats = feat_sel$gene_names[feat_sel$HPM]

# X_sel = lectura[,feats]


feat_df = data.frame(c('INTERCEPT', feats), c(unname_coefs) )
colnames(feat_df) <- c('Feature', 'Coeficient')



zz <- rawConnection(raw(0), "r+")
write.csv(feat_df, zz, row.names = FALSE)


bvslnp_obj <- "datalake/data/InteligenciaRiesgos/M&M/MCV/DATASETS_3/JAT_MCV_VAR_VARIABLES_SELECCION/SAMPLES/FEATURE_SELECTION/BVSNLP.csv"

# upload the object to S3
aws.s3::put_object(file = rawConnectionValue(zz),
                   bucket = "boi-banregio", object = bvslnp_obj)

# close the connection
close(zz)





