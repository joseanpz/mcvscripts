{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Importamos las librerias necesarias\n",
    "import boto3\n",
    "import pandas as pd\n",
    "import numpy as np\n",
    "import io\n",
    "from datetime import datetime, timedelta\n",
    "import matplotlib.pyplot as plt\n",
    "from pandas.tseries.offsets import MonthEnd\n",
    "from itertools import product\n",
    "t1 = datetime.now()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 2,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Creamos la funcion para leer las bases de datos con sus caracteristicas particulares\n",
    "bucket = 'boi-banregio'\n",
    "s3_bucket_resource = boto3.resource('s3').Bucket(bucket)\n",
    "\n",
    "def retrievs3(file_key, index_col=None, sep=',', header=None):\n",
    "    obj = s3_bucket_resource.Object(file_key).get()\n",
    "    df = pd.read_csv(\n",
    "        io.BytesIO(obj['Body'].read()),\n",
    "        header=header,\n",
    "        index_col=index_col,\n",
    "        sep='|',\n",
    "        dtype=str\n",
    "    )\n",
    "    return df"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 3,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "0:00:44.842560\n"
     ]
    }
   ],
   "source": [
    "# Leemos las bases necesarias\n",
    "file_key = \"datalake/data/InteligenciaRiesgos/M&M/BTDC/BTDC_UNIVERSO/000000_0\"\n",
    "btdc_universo = retrievs3(file_key)\n",
    "btdc_universo.columns = ['CREDITO', 'CLIENTE', 'FECHA', 'DIAS_ATRASO_ACT', 'SDO_TOT_ACT', 'CARTERA_VENCIDA', 'CLASIFICACION', \n",
    "                         'MONTO_LINEA', 'MONTO_ORIGINAL']\n",
    "btdc_universo.drop(['CLASIFICACION', 'MONTO_LINEA', 'MONTO_ORIGINAL'], axis=1, inplace=True)\n",
    "btdc_universo = btdc_universo[btdc_universo['FECHA']>'201707'].reset_index(drop=True)\n",
    "btdc_universo.sort_values(['FECHA'], inplace=True, ascending=True)\n",
    "\n",
    "file_key2 = \"datalake/data/InteligenciaRiesgos/M&M/BTDC/BTDC_MOVLINEAS/000000_0\"\n",
    "limites_rvas = retrievs3(file_key2)\n",
    "limites_rvas.columns = ['FECHA', 'CREDITO', 'LIMITELINEA', 'MONTO_MIN_ACT', 'MONTO_MIN_1_MES', 'MONTO_MIN_2_MES', \n",
    "                        'MONTO_MIN_3_MES', 'MONTO_MIN_4_MES', 'MONTO_MIN_5_MES', 'MONTO_MIN_6_MES', 'PAGO_ACT', \n",
    "                        'PAGO_1_MES', 'PAGO_2_MES', 'PAGO_3_MES', 'PAGO_4_MES', 'PAGO_5_MES', 'PAGO_6_MES', 'FEC_INICIO',\n",
    "                        'FEC_INICIO_CRED', 'producto', 'mediosbloqueados']\n",
    "limites_rvas.drop(['FEC_INICIO_CRED'], axis=1, inplace=True)\n",
    "limites_rvas['FECHA'] = limites_rvas['FECHA'].replace('-', '', regex=True)\n",
    "# limites_rvas['FEC_INICIO'] = pd.to_datetime(limites_rvas['FEC_INICIO']).dt.strftime('%Y%m')\n",
    "\n",
    "file_castigos = \"datalake/data/InteligenciaRiesgos/M&M/BTDC/BTDC_CO_CASTIGOS/000000_0\"\n",
    "castigos = retrievs3(file_castigos)\n",
    "castigos.columns =['CREDITO', 'LINEA', 'ANIOMES_CAST', 'OPERACION_CAST', 'CASTIGOTOT', 'FECHA_ORIGINACION', 'FECHA']\n",
    "print(datetime.now() - t1)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "(15072, 7)"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>CREDITO</th>\n",
       "      <th>LINEA</th>\n",
       "      <th>ANIOMES_CAST</th>\n",
       "      <th>OPERACION_CAST</th>\n",
       "      <th>CASTIGOTOT</th>\n",
       "      <th>FECHA_ORIGINACION</th>\n",
       "      <th>FECHA</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>15067</th>\n",
       "      <td>0000035056</td>\n",
       "      <td>0000035056</td>\n",
       "      <td>201909</td>\n",
       "      <td>Castigo</td>\n",
       "      <td>39162</td>\n",
       "      <td>2010-09-21</td>\n",
       "      <td>201908</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>15068</th>\n",
       "      <td>0000058627</td>\n",
       "      <td>0000058627</td>\n",
       "      <td>201909</td>\n",
       "      <td>Castigo</td>\n",
       "      <td>60221</td>\n",
       "      <td>2013-12-03</td>\n",
       "      <td>201908</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>15069</th>\n",
       "      <td>0000067423</td>\n",
       "      <td>0000067423</td>\n",
       "      <td>201909</td>\n",
       "      <td>Castigo</td>\n",
       "      <td>60024</td>\n",
       "      <td>2014-12-01</td>\n",
       "      <td>201908</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>15070</th>\n",
       "      <td>131945180029001</td>\n",
       "      <td>131945180029</td>\n",
       "      <td>201909</td>\n",
       "      <td>LIQUIDACI�N</td>\n",
       "      <td>2896</td>\n",
       "      <td>2018-02-21</td>\n",
       "      <td>201908</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>15071</th>\n",
       "      <td>032890300064001</td>\n",
       "      <td>032890300064</td>\n",
       "      <td>201909</td>\n",
       "      <td>CONDONACI�N</td>\n",
       "      <td>5493</td>\n",
       "      <td>2019-02-15</td>\n",
       "      <td>201908</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "               CREDITO         LINEA ANIOMES_CAST OPERACION_CAST CASTIGOTOT  \\\n",
       "15067       0000035056    0000035056       201909        Castigo      39162   \n",
       "15068       0000058627    0000058627       201909        Castigo      60221   \n",
       "15069       0000067423    0000067423       201909        Castigo      60024   \n",
       "15070  131945180029001  131945180029       201909    LIQUIDACI�N       2896   \n",
       "15071  032890300064001  032890300064       201909    CONDONACI�N       5493   \n",
       "\n",
       "      FECHA_ORIGINACION   FECHA  \n",
       "15067        2010-09-21  201908  \n",
       "15068        2013-12-03  201908  \n",
       "15069        2014-12-01  201908  \n",
       "15070        2018-02-21  201908  \n",
       "15071        2019-02-15  201908  "
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "array(['CASTIGO', 'LIQUIDACI�N TOTAL', 'LIQUIDACI�N', 'DACI�N',\n",
       "       'LIQUIDACI�N TDC', 'CONV JUD TDC', 'CONVENIO JUDICIAL',\n",
       "       'CANCELACI�N', 'Castigo', 'CONDONACI�N'], dtype=object)"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Análisis de base de castigos\n",
    "display(castigos.shape)\n",
    "display(castigos.tail())\n",
    "display(castigos['OPERACION_CAST'].unique())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Antes de hacer el merge filtramos para quedarnos solo con los meses que queremos\n",
    "castigos = castigos.loc[castigos['FECHA']>'201707']\n",
    "\n",
    "# Unimos las bases\n",
    "btdc_universo = pd.merge(btdc_universo, limites_rvas, how='left', on=['CREDITO', 'FECHA'])\n",
    "btdc_universo = pd.merge(btdc_universo, castigos, how='left', on=['CREDITO', 'FECHA'])"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Damos tratamiento a los castigos\n",
    "btdc_universo['IND_CASTIGO'] = 0\n",
    "btdc_universo['OPERACION_CAST'] = btdc_universo['OPERACION_CAST'].str.replace('�', 'O').str.upper()\n",
    "tipos_castigo = ['CASTIGO', 'CANCELACION', 'LIQUIDACION']\n",
    "btdc_universo.loc[btdc_universo['OPERACION_CAST'].isin(tipos_castigo), 'IND_CASTIGO'] = 1"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 7,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "(2389564, 30)"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "Index(['CREDITO', 'CLIENTE', 'FECHA', 'DIAS_ATRASO_ACT', 'SDO_TOT_ACT',\n",
       "       'CARTERA_VENCIDA', 'LIMITELINEA', 'MONTO_MIN_ACT', 'MONTO_MIN_1_MES',\n",
       "       'MONTO_MIN_2_MES', 'MONTO_MIN_3_MES', 'MONTO_MIN_4_MES',\n",
       "       'MONTO_MIN_5_MES', 'MONTO_MIN_6_MES', 'PAGO_ACT', 'PAGO_1_MES',\n",
       "       'PAGO_2_MES', 'PAGO_3_MES', 'PAGO_4_MES', 'PAGO_5_MES', 'PAGO_6_MES',\n",
       "       'FEC_INICIO', 'producto', 'mediosbloqueados', 'LINEA', 'ANIOMES_CAST',\n",
       "       'OPERACION_CAST', 'CASTIGOTOT', 'FECHA_ORIGINACION', 'IND_CASTIGO'],\n",
       "      dtype='object')"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>CREDITO</th>\n",
       "      <th>CLIENTE</th>\n",
       "      <th>FECHA</th>\n",
       "      <th>DIAS_ATRASO_ACT</th>\n",
       "      <th>SDO_TOT_ACT</th>\n",
       "      <th>CARTERA_VENCIDA</th>\n",
       "      <th>LIMITELINEA</th>\n",
       "      <th>MONTO_MIN_ACT</th>\n",
       "      <th>MONTO_MIN_1_MES</th>\n",
       "      <th>MONTO_MIN_2_MES</th>\n",
       "      <th>...</th>\n",
       "      <th>PAGO_6_MES</th>\n",
       "      <th>FEC_INICIO</th>\n",
       "      <th>producto</th>\n",
       "      <th>mediosbloqueados</th>\n",
       "      <th>LINEA</th>\n",
       "      <th>ANIOMES_CAST</th>\n",
       "      <th>OPERACION_CAST</th>\n",
       "      <th>CASTIGOTOT</th>\n",
       "      <th>FECHA_ORIGINACION</th>\n",
       "      <th>IND_CASTIGO</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>0</th>\n",
       "      <td>0000175533</td>\n",
       "      <td>01284480</td>\n",
       "      <td>201708</td>\n",
       "      <td>0</td>\n",
       "      <td>74654.7</td>\n",
       "      <td>\\N</td>\n",
       "      <td>80000.00</td>\n",
       "      <td>2298.00</td>\n",
       "      <td>2637.00</td>\n",
       "      <td>1881.00</td>\n",
       "      <td>...</td>\n",
       "      <td>0.00</td>\n",
       "      <td>2017-03-06</td>\n",
       "      <td>211 BANREGIO MAS</td>\n",
       "      <td>No</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>1</th>\n",
       "      <td>0000032643</td>\n",
       "      <td>02301395</td>\n",
       "      <td>201708</td>\n",
       "      <td>0</td>\n",
       "      <td>\\N</td>\n",
       "      <td>\\N</td>\n",
       "      <td>15000.00</td>\n",
       "      <td>0.00</td>\n",
       "      <td>0.00</td>\n",
       "      <td>0.00</td>\n",
       "      <td>...</td>\n",
       "      <td>7500.00</td>\n",
       "      <td>2010-05-07</td>\n",
       "      <td>203 VISA GOLD</td>\n",
       "      <td>No</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>2</th>\n",
       "      <td>0000158851</td>\n",
       "      <td>02301411</td>\n",
       "      <td>201708</td>\n",
       "      <td>0</td>\n",
       "      <td>5346.06</td>\n",
       "      <td>\\N</td>\n",
       "      <td>175000.00</td>\n",
       "      <td>569.00</td>\n",
       "      <td>2084.00</td>\n",
       "      <td>0.00</td>\n",
       "      <td>...</td>\n",
       "      <td>5845.00</td>\n",
       "      <td>2016-10-24</td>\n",
       "      <td>211 BANREGIO MAS</td>\n",
       "      <td>No</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>3</th>\n",
       "      <td>0000047882</td>\n",
       "      <td>02301411</td>\n",
       "      <td>201708</td>\n",
       "      <td>0</td>\n",
       "      <td>\\N</td>\n",
       "      <td>\\N</td>\n",
       "      <td>10000.00</td>\n",
       "      <td>0.00</td>\n",
       "      <td>0.00</td>\n",
       "      <td>0.00</td>\n",
       "      <td>...</td>\n",
       "      <td>0.00</td>\n",
       "      <td>2012-08-08</td>\n",
       "      <td>203 VISA GOLD</td>\n",
       "      <td>No</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>4</th>\n",
       "      <td>0000135993</td>\n",
       "      <td>02301425</td>\n",
       "      <td>201708</td>\n",
       "      <td>0</td>\n",
       "      <td>\\N</td>\n",
       "      <td>\\N</td>\n",
       "      <td>31100.00</td>\n",
       "      <td>0.00</td>\n",
       "      <td>0.00</td>\n",
       "      <td>0.00</td>\n",
       "      <td>...</td>\n",
       "      <td>0.00</td>\n",
       "      <td>2016-06-23</td>\n",
       "      <td>211 BANREGIO MAS</td>\n",
       "      <td>No</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>NaN</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "<p>5 rows × 30 columns</p>\n",
       "</div>"
      ],
      "text/plain": [
       "      CREDITO   CLIENTE   FECHA DIAS_ATRASO_ACT SDO_TOT_ACT CARTERA_VENCIDA  \\\n",
       "0  0000175533  01284480  201708               0     74654.7              \\N   \n",
       "1  0000032643  02301395  201708               0          \\N              \\N   \n",
       "2  0000158851  02301411  201708               0     5346.06              \\N   \n",
       "3  0000047882  02301411  201708               0          \\N              \\N   \n",
       "4  0000135993  02301425  201708               0          \\N              \\N   \n",
       "\n",
       "  LIMITELINEA MONTO_MIN_ACT MONTO_MIN_1_MES MONTO_MIN_2_MES  ... PAGO_6_MES  \\\n",
       "0    80000.00       2298.00         2637.00         1881.00  ...       0.00   \n",
       "1    15000.00          0.00            0.00            0.00  ...    7500.00   \n",
       "2   175000.00        569.00         2084.00            0.00  ...    5845.00   \n",
       "3    10000.00          0.00            0.00            0.00  ...       0.00   \n",
       "4    31100.00          0.00            0.00            0.00  ...       0.00   \n",
       "\n",
       "   FEC_INICIO          producto mediosbloqueados LINEA ANIOMES_CAST  \\\n",
       "0  2017-03-06  211 BANREGIO MAS               No   NaN          NaN   \n",
       "1  2010-05-07     203 VISA GOLD               No   NaN          NaN   \n",
       "2  2016-10-24  211 BANREGIO MAS               No   NaN          NaN   \n",
       "3  2012-08-08     203 VISA GOLD               No   NaN          NaN   \n",
       "4  2016-06-23  211 BANREGIO MAS               No   NaN          NaN   \n",
       "\n",
       "  OPERACION_CAST CASTIGOTOT FECHA_ORIGINACION IND_CASTIGO  \n",
       "0            NaN        NaN               NaN           0  \n",
       "1            NaN        NaN               NaN           0  \n",
       "2            NaN        NaN               NaN           0  \n",
       "3            NaN        NaN               NaN           0  \n",
       "4            NaN        NaN               NaN           0  \n",
       "\n",
       "[5 rows x 30 columns]"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>count</th>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>OPERACION_CAST</th>\n",
       "      <th></th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>CANCELACION</th>\n",
       "      <td>1</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>CASTIGO</th>\n",
       "      <td>4135</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>LIQUIDACION</th>\n",
       "      <td>16</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "                count\n",
       "OPERACION_CAST       \n",
       "CANCELACION         1\n",
       "CASTIGO          4135\n",
       "LIQUIDACION        16"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "'No de castigos 4152'"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Análisis de base de universo\n",
    "display(btdc_universo.shape)\n",
    "display(btdc_universo.columns)\n",
    "display(btdc_universo.head())\n",
    "display(btdc_universo.groupby('OPERACION_CAST').size().to_frame('count'))\n",
    "display('No de castigos '+ str(btdc_universo['CASTIGOTOT'].notnull().sum()))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Creamos la variable de si fue castigado el crédito en los siguientes 6 meses\n",
    "btdc_universo['castigo_01M'] = btdc_universo.groupby(['CREDITO'])['IND_CASTIGO'].shift(0)\n",
    "btdc_universo['castigo_02M'] = btdc_universo.groupby(['CREDITO'])['IND_CASTIGO'].shift(-1)\n",
    "btdc_universo['castigo_03M'] = btdc_universo.groupby(['CREDITO'])['IND_CASTIGO'].shift(-2)\n",
    "btdc_universo['castigo_04M'] = btdc_universo.groupby(['CREDITO'])['IND_CASTIGO'].shift(-3)\n",
    "btdc_universo['castigo_05M'] = btdc_universo.groupby(['CREDITO'])['IND_CASTIGO'].shift(-4)\n",
    "btdc_universo['castigo_06M'] = btdc_universo.groupby(['CREDITO'])['IND_CASTIGO'].shift(-5)\n",
    "btdc_universo['castigo_s06m'] = np.where(btdc_universo[['castigo_01M', 'castigo_02M', 'castigo_03M', \n",
    "                                            'castigo_04M', 'castigo_05M', 'castigo_06M']].max(axis=1) >= 1, 1, 0)\n",
    "btdc_universo.drop(['castigo_01M', 'castigo_02M', 'castigo_03M', 'castigo_04M', 'castigo_05M', 'castigo_06M', 'LINEA', \n",
    "                    'ANIOMES_CAST', 'OPERACION_CAST', 'CASTIGOTOT', 'FECHA_ORIGINACION', 'IND_CASTIGO'], \n",
    "                     axis=1, inplace=True)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 9,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "0:02:00.176356\n"
     ]
    }
   ],
   "source": [
    "# Convertimos variables a numericas\n",
    "cols = ['SDO_TOT_ACT', 'DIAS_ATRASO_ACT', 'CARTERA_VENCIDA', 'LIMITELINEA', 'MONTO_MIN_ACT', 'MONTO_MIN_1_MES', \n",
    "        'MONTO_MIN_2_MES', 'MONTO_MIN_3_MES', 'MONTO_MIN_4_MES', 'MONTO_MIN_5_MES', 'MONTO_MIN_6_MES', 'PAGO_ACT', \n",
    "        'PAGO_1_MES', 'PAGO_2_MES', 'PAGO_3_MES', 'PAGO_4_MES', 'PAGO_5_MES', 'PAGO_6_MES']\n",
    "btdc_universo[cols] = btdc_universo[cols].apply(pd.to_numeric, errors='coerce')\n",
    "btdc_universo.loc[:, ('SDO_TOT_ACT')].fillna(0, inplace=True)\n",
    "btdc_universo.loc[:, ('DIAS_ATRASO_ACT')].fillna(0, inplace=True)\n",
    "btdc_universo.loc[:, ('CARTERA_VENCIDA')].fillna(0, inplace=True)\n",
    "\n",
    "del limites_rvas\n",
    "del cols\n",
    "del castigos\n",
    "print(datetime.now() - t1)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 10,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Creamos las variables de saldo y días de atraso de 6 meses anteriores\n",
    "btdc_universo['SALDO_TOT_1_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_TOT_ACT'].shift(1)\n",
    "btdc_universo['SALDO_TOT_2_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_TOT_ACT'].shift(2)\n",
    "btdc_universo['SALDO_TOT_3_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_TOT_ACT'].shift(3)\n",
    "btdc_universo['SALDO_TOT_4_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_TOT_ACT'].shift(4)\n",
    "btdc_universo['SALDO_TOT_5_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_TOT_ACT'].shift(5)\n",
    "btdc_universo['SALDO_TOT_6_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_TOT_ACT'].shift(6)\n",
    "\n",
    "btdc_universo['DIAS_ATRASO_1_MES'] = btdc_universo.groupby(['CREDITO'])['DIAS_ATRASO_ACT'].shift(1)\n",
    "btdc_universo['DIAS_ATRASO_2_MES'] = btdc_universo.groupby(['CREDITO'])['DIAS_ATRASO_ACT'].shift(2)\n",
    "btdc_universo['DIAS_ATRASO_3_MES'] = btdc_universo.groupby(['CREDITO'])['DIAS_ATRASO_ACT'].shift(3)\n",
    "btdc_universo['DIAS_ATRASO_4_MES'] = btdc_universo.groupby(['CREDITO'])['DIAS_ATRASO_ACT'].shift(4)\n",
    "btdc_universo['DIAS_ATRASO_5_MES'] = btdc_universo.groupby(['CREDITO'])['DIAS_ATRASO_ACT'].shift(5)\n",
    "btdc_universo['DIAS_ATRASO_6_MES'] = btdc_universo.groupby(['CREDITO'])['DIAS_ATRASO_ACT'].shift(6)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 11,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Creamos variables indicadoras de si tiene 6 meses de antiguedad y de actividad\n",
    "btdc_universo['FEC_INICIO'] = pd.to_datetime(btdc_universo['FEC_INICIO'], format='%Y-%m-%d')\n",
    "btdc_universo['FEC_AMD'] = pd.to_datetime(btdc_universo['FECHA'], format='%Y%m') + MonthEnd(1)\n",
    "btdc_universo['MESES_ANT'] = ((btdc_universo['FEC_AMD'].dt.year - btdc_universo['FEC_INICIO'].dt.year)*12 + \n",
    "                              (btdc_universo['FEC_AMD'].dt.month - btdc_universo['FEC_INICIO'].dt.month))\n",
    "btdc_universo['HIST_6M'] = np.where(btdc_universo['MESES_ANT']<6, 0, 1)\n",
    "btdc_universo['IND_ACT'] = np.where(btdc_universo[['MONTO_MIN_ACT', 'MONTO_MIN_1_MES', 'MONTO_MIN_2_MES', \n",
    "                        'MONTO_MIN_3_MES', 'MONTO_MIN_4_MES', 'MONTO_MIN_5_MES', 'MONTO_MIN_6_MES', 'PAGO_ACT', \n",
    "                        'PAGO_1_MES', 'PAGO_2_MES', 'PAGO_3_MES', 'PAGO_4_MES', 'PAGO_5_MES', \n",
    "                        'PAGO_6_MES']].max(axis=1)==0, 0, 1)\n",
    "btdc_universo.drop(['FEC_INICIO', 'FEC_AMD', 'MESES_ANT'], axis=1, inplace=True)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 12,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Construimos las variables de saldo actual\n",
    "btdc_universo['SDO_TOT_AVG'] = btdc_universo[['SDO_TOT_ACT', 'SALDO_TOT_1_MES', 'SALDO_TOT_2_MES', 'SALDO_TOT_3_MES', \n",
    "                                              'SALDO_TOT_4_MES', 'SALDO_TOT_5_MES', 'SALDO_TOT_6_MES']].mean(axis=1)\n",
    "btdc_universo['SDO_TOT_MAX'] = btdc_universo[['SDO_TOT_ACT', 'SALDO_TOT_1_MES', 'SALDO_TOT_2_MES', 'SALDO_TOT_3_MES', \n",
    "                                              'SALDO_TOT_4_MES', 'SALDO_TOT_5_MES', 'SALDO_TOT_6_MES']].max(axis=1)\n",
    "btdc_universo['SDO_TOT_MIN'] = btdc_universo[['SDO_TOT_ACT', 'SALDO_TOT_1_MES', 'SALDO_TOT_2_MES', 'SALDO_TOT_3_MES', \n",
    "                                              'SALDO_TOT_4_MES', 'SALDO_TOT_5_MES', 'SALDO_TOT_6_MES']].min(axis=1)\n",
    "btdc_universo['SDO_TOT_WAVG'] = np.average(btdc_universo[['SDO_TOT_ACT', 'SALDO_TOT_1_MES', 'SALDO_TOT_2_MES', \n",
    "                                                          'SALDO_TOT_3_MES', 'SALDO_TOT_4_MES', 'SALDO_TOT_5_MES', \n",
    "                                                          'SALDO_TOT_6_MES']], axis=1, weights=[7, 6, 5, 4, 3, 2, 1])\n",
    "\n",
    "btdc_universo['INC_6to5'] = np.where(btdc_universo['SALDO_TOT_6_MES']<btdc_universo['SALDO_TOT_5_MES'], 1, 0)\n",
    "btdc_universo['INC_5to4'] = np.where(btdc_universo['SALDO_TOT_5_MES']<btdc_universo['SALDO_TOT_4_MES'], 1, 0)\n",
    "btdc_universo['INC_4to3'] = np.where(btdc_universo['SALDO_TOT_4_MES']<btdc_universo['SALDO_TOT_3_MES'], 1, 0)\n",
    "btdc_universo['INC_3to2'] = np.where(btdc_universo['SALDO_TOT_3_MES']<btdc_universo['SALDO_TOT_2_MES'], 1, 0)\n",
    "btdc_universo['INC_2to1'] = np.where(btdc_universo['SALDO_TOT_2_MES']<btdc_universo['SALDO_TOT_1_MES'], 1, 0)\n",
    "btdc_universo['INC_1to0'] = np.where(btdc_universo['SALDO_TOT_1_MES']<btdc_universo['SDO_TOT_ACT'], 1, 0)\n",
    "btdc_universo['SDO_TOT_INCS'] = btdc_universo[['INC_6to5', 'INC_5to4', 'INC_4to3', 'INC_3to2', 'INC_2to1', \n",
    "                                               'INC_1to0']].sum(axis=1)\n",
    "\n",
    "btdc_universo['DEC_6to5'] = np.where(btdc_universo['SALDO_TOT_6_MES']>btdc_universo['SALDO_TOT_5_MES'], 1, 0)\n",
    "btdc_universo['DEC_5to4'] = np.where(btdc_universo['SALDO_TOT_5_MES']>btdc_universo['SALDO_TOT_4_MES'], 1, 0)\n",
    "btdc_universo['DEC_4to3'] = np.where(btdc_universo['SALDO_TOT_4_MES']>btdc_universo['SALDO_TOT_3_MES'], 1, 0)\n",
    "btdc_universo['DEC_3to2'] = np.where(btdc_universo['SALDO_TOT_3_MES']>btdc_universo['SALDO_TOT_2_MES'], 1, 0)\n",
    "btdc_universo['DEC_2to1'] = np.where(btdc_universo['SALDO_TOT_2_MES']>btdc_universo['SALDO_TOT_1_MES'], 1, 0)\n",
    "btdc_universo['DEC_1to0'] = np.where(btdc_universo['SALDO_TOT_1_MES']>btdc_universo['SDO_TOT_ACT'], 1, 0)\n",
    "btdc_universo['SDO_TOT_DECS'] = btdc_universo[['DEC_6to5', 'DEC_5to4', 'DEC_4to3', 'DEC_3to2', 'DEC_2to1', \n",
    "                                               'DEC_1to0']].sum(axis=1)\n",
    "btdc_universo.drop(['DEC_6to5', 'DEC_5to4', 'DEC_4to3', 'DEC_3to2', 'DEC_2to1', 'DEC_1to0', 'INC_6to5', 'INC_5to4', \n",
    "                    'INC_4to3', 'INC_3to2', 'INC_2to1', 'INC_1to0'], axis=1, inplace=True)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 13,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Construimos las variables de saldo vigente\n",
    "btdc_universo['SDO_VIG_ACT'] = np.where(btdc_universo['CARTERA_VENCIDA']==0, btdc_universo['SDO_TOT_ACT'], 0)\n",
    "btdc_universo['SDO_VIG_1_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_VIG_ACT'].shift(1)\n",
    "btdc_universo['SDO_VIG_2_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_VIG_ACT'].shift(2)\n",
    "btdc_universo['SDO_VIG_3_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_VIG_ACT'].shift(3)\n",
    "btdc_universo['SDO_VIG_4_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_VIG_ACT'].shift(4)\n",
    "btdc_universo['SDO_VIG_5_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_VIG_ACT'].shift(5)\n",
    "btdc_universo['SDO_VIG_6_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_VIG_ACT'].shift(6)\n",
    "\n",
    "btdc_universo['SDO_VIG_AVG'] = btdc_universo[['SDO_VIG_ACT', 'SDO_VIG_1_MES', 'SDO_VIG_2_MES', 'SDO_VIG_3_MES', \n",
    "                                              'SDO_VIG_4_MES', 'SDO_VIG_5_MES', 'SDO_VIG_6_MES']].mean(axis=1)\n",
    "btdc_universo['SDO_VIG_MAX'] = btdc_universo[['SDO_VIG_ACT', 'SDO_VIG_1_MES', 'SDO_VIG_2_MES', 'SDO_VIG_3_MES', \n",
    "                                              'SDO_VIG_4_MES', 'SDO_VIG_5_MES', 'SDO_VIG_6_MES']].max(axis=1)\n",
    "btdc_universo['SDO_VIG_MIN'] = btdc_universo[['SDO_VIG_ACT', 'SDO_VIG_1_MES', 'SDO_VIG_2_MES', 'SDO_VIG_3_MES', \n",
    "                                              'SDO_VIG_4_MES', 'SDO_VIG_5_MES', 'SDO_VIG_6_MES']].min(axis=1)\n",
    "btdc_universo['SDO_VIG_WAVG'] = np.average(btdc_universo[['SDO_VIG_ACT', 'SDO_VIG_1_MES', 'SDO_VIG_2_MES', \n",
    "                                                          'SDO_VIG_3_MES', 'SDO_VIG_4_MES', 'SDO_VIG_5_MES', 'SDO_VIG_6_MES']], \n",
    "                                                           axis=1, weights=[7, 6, 5, 4, 3, 2, 1])"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 14,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Construimos las variables de saldo atrasado pero sin llegar a cartera vencida\n",
    "btdc_universo['SDO_ATR_ACT'] = np.where(((btdc_universo['CARTERA_VENCIDA']==0) & (btdc_universo['DIAS_ATRASO_ACT']>0)), \n",
    "                                        btdc_universo['SDO_TOT_ACT'], 0)\n",
    "btdc_universo['SDO_ATR_1_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_ATR_ACT'].shift(1)\n",
    "btdc_universo['SDO_ATR_2_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_ATR_ACT'].shift(2)\n",
    "btdc_universo['SDO_ATR_3_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_ATR_ACT'].shift(3)\n",
    "btdc_universo['SDO_ATR_4_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_ATR_ACT'].shift(4)\n",
    "btdc_universo['SDO_ATR_5_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_ATR_ACT'].shift(5)\n",
    "btdc_universo['SDO_ATR_6_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_ATR_ACT'].shift(6)\n",
    "\n",
    "btdc_universo['SDO_ATR_AVG'] = btdc_universo[['SDO_ATR_ACT', 'SDO_ATR_1_MES', 'SDO_ATR_2_MES', 'SDO_ATR_3_MES', \n",
    "                                              'SDO_ATR_4_MES', 'SDO_ATR_5_MES', 'SDO_ATR_6_MES']].mean(axis=1)\n",
    "btdc_universo['SDO_ATR_MAX'] = btdc_universo[['SDO_ATR_ACT', 'SDO_ATR_1_MES', 'SDO_ATR_2_MES', 'SDO_ATR_3_MES', \n",
    "                                              'SDO_ATR_4_MES', 'SDO_ATR_5_MES', 'SDO_ATR_6_MES']].max(axis=1)\n",
    "btdc_universo['SDO_ATR_MIN'] = btdc_universo[['SDO_ATR_ACT', 'SDO_ATR_1_MES', 'SDO_ATR_2_MES', 'SDO_ATR_3_MES', \n",
    "                                              'SDO_ATR_4_MES', 'SDO_ATR_5_MES', 'SDO_ATR_6_MES']].min(axis=1)\n",
    "btdc_universo['SDO_ATR_WAVG'] = np.average(btdc_universo[['SDO_ATR_ACT', 'SDO_ATR_1_MES', 'SDO_ATR_2_MES', 'SDO_ATR_3_MES', \n",
    "                                                          'SDO_ATR_4_MES', 'SDO_ATR_5_MES', 'SDO_ATR_6_MES']], \n",
    "                                                           axis=1, weights=[7, 6, 5, 4, 3, 2, 1])"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 15,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Construimos las variables de saldo vencido\n",
    "btdc_universo['SDO_VENC_ACT'] = np.where((btdc_universo['CARTERA_VENCIDA']>0), btdc_universo['SDO_TOT_ACT'], 0)\n",
    "btdc_universo['SDO_VENC_1_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_VENC_ACT'].shift(1)\n",
    "btdc_universo['SDO_VENC_2_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_VENC_ACT'].shift(2)\n",
    "btdc_universo['SDO_VENC_3_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_VENC_ACT'].shift(3)\n",
    "btdc_universo['SDO_VENC_4_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_VENC_ACT'].shift(4)\n",
    "btdc_universo['SDO_VENC_5_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_VENC_ACT'].shift(5)\n",
    "btdc_universo['SDO_VENC_6_MES'] = btdc_universo.groupby(['CREDITO'])['SDO_VENC_ACT'].shift(6)\n",
    "\n",
    "btdc_universo['SDO_VENC_AVG'] = btdc_universo[['SDO_VENC_ACT', 'SDO_VENC_1_MES', 'SDO_VENC_2_MES', 'SDO_VENC_3_MES', \n",
    "                                               'SDO_VENC_4_MES', 'SDO_VENC_5_MES', 'SDO_VENC_6_MES']].mean(axis=1)\n",
    "btdc_universo['SDO_VENC_MAX'] = btdc_universo[['SDO_VENC_ACT', 'SDO_VENC_1_MES', 'SDO_VENC_2_MES', 'SDO_VENC_3_MES', \n",
    "                                               'SDO_VENC_4_MES', 'SDO_VENC_5_MES', 'SDO_VENC_6_MES']].max(axis=1)\n",
    "btdc_universo['SDO_VENC_MIN'] = btdc_universo[['SDO_VENC_ACT', 'SDO_VENC_1_MES', 'SDO_VENC_2_MES', 'SDO_VENC_3_MES', \n",
    "                                               'SDO_VENC_4_MES', 'SDO_VENC_5_MES', 'SDO_VENC_6_MES']].min(axis=1)\n",
    "btdc_universo['SDO_VENC_WAVG'] = np.average(btdc_universo[['SDO_VENC_ACT', 'SDO_VENC_1_MES', 'SDO_VENC_2_MES', \n",
    "                                                           'SDO_VENC_3_MES', 'SDO_VENC_4_MES', 'SDO_VENC_5_MES', \n",
    "                                                           'SDO_VENC_6_MES']], \n",
    "                                                           axis=1, weights=[7, 6, 5, 4, 3, 2, 1])"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 16,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Variables de diferencias de saldo actual\n",
    "btdc_universo['SDO_TOT_ACT-MAX'] = btdc_universo['SDO_TOT_ACT'] - btdc_universo['SDO_TOT_MAX']\n",
    "btdc_universo['SDO_TOT_ACT-MIN'] = btdc_universo['SDO_TOT_ACT'] - btdc_universo['SDO_TOT_MIN']\n",
    "btdc_universo['SDO_TOT_ACT-AVG'] = btdc_universo['SDO_TOT_ACT'] - btdc_universo['SDO_TOT_AVG']"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 17,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Variables de porcentaje de utilizacion de linea\n",
    "btdc_universo['PCT_UT_TOT_ACT'] = btdc_universo['SDO_TOT_ACT'] / btdc_universo['LIMITELINEA']\n",
    "btdc_universo['PCT_UT_1_MES'] = btdc_universo.groupby(['CREDITO'])['PCT_UT_TOT_ACT'].shift(1)\n",
    "btdc_universo['PCT_UT_2_MES'] = btdc_universo.groupby(['CREDITO'])['PCT_UT_TOT_ACT'].shift(2)\n",
    "btdc_universo['PCT_UT_3_MES'] = btdc_universo.groupby(['CREDITO'])['PCT_UT_TOT_ACT'].shift(3)\n",
    "btdc_universo['PCT_UT_4_MES'] = btdc_universo.groupby(['CREDITO'])['PCT_UT_TOT_ACT'].shift(4)\n",
    "btdc_universo['PCT_UT_5_MES'] = btdc_universo.groupby(['CREDITO'])['PCT_UT_TOT_ACT'].shift(5)\n",
    "btdc_universo['PCT_UT_6_MES'] = btdc_universo.groupby(['CREDITO'])['PCT_UT_TOT_ACT'].shift(6)\n",
    "\n",
    "btdc_universo['PCT_UT_AVG'] = btdc_universo[['PCT_UT_TOT_ACT', 'PCT_UT_1_MES', 'PCT_UT_2_MES', 'PCT_UT_3_MES', 'PCT_UT_4_MES', \n",
    "                                             'PCT_UT_5_MES', 'PCT_UT_6_MES']].mean(axis=1)\n",
    "btdc_universo['PCT_UT_MAX'] = btdc_universo[['PCT_UT_TOT_ACT', 'PCT_UT_1_MES', 'PCT_UT_2_MES', 'PCT_UT_3_MES', 'PCT_UT_4_MES', \n",
    "                                             'PCT_UT_5_MES', 'PCT_UT_6_MES']].max(axis=1)\n",
    "btdc_universo['PCT_UT_MIN'] = btdc_universo[['PCT_UT_TOT_ACT', 'PCT_UT_1_MES', 'PCT_UT_2_MES', 'PCT_UT_3_MES', 'PCT_UT_4_MES', \n",
    "                                             'PCT_UT_5_MES', 'PCT_UT_6_MES']].min(axis=1)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 18,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Variables de incrementos y decrementos del porcentaje de utilizacion\n",
    "btdc_universo['PC_UT_INC_6to5'] = np.where(btdc_universo['PCT_UT_6_MES']<btdc_universo['PCT_UT_5_MES'], 1, 0)\n",
    "btdc_universo['PC_UT_INC_5to4'] = np.where(btdc_universo['PCT_UT_5_MES']<btdc_universo['PCT_UT_4_MES'], 1, 0)\n",
    "btdc_universo['PC_UT_INC_4to3'] = np.where(btdc_universo['PCT_UT_4_MES']<btdc_universo['PCT_UT_3_MES'], 1, 0)\n",
    "btdc_universo['PC_UT_INC_3to2'] = np.where(btdc_universo['PCT_UT_3_MES']<btdc_universo['PCT_UT_2_MES'], 1, 0)\n",
    "btdc_universo['PC_UT_INC_2to1'] = np.where(btdc_universo['PCT_UT_2_MES']<btdc_universo['PCT_UT_1_MES'], 1, 0)\n",
    "btdc_universo['PC_UT_INC_1to0'] = np.where(btdc_universo['PCT_UT_1_MES']<btdc_universo['PCT_UT_TOT_ACT'], 1, 0)\n",
    "btdc_universo['PCT_UT_TOT_INCS'] = btdc_universo[['PC_UT_INC_6to5', 'PC_UT_INC_5to4', 'PC_UT_INC_4to3', 'PC_UT_INC_3to2', \n",
    "                                                  'PC_UT_INC_2to1', 'PC_UT_INC_1to0']].sum(axis=1)\n",
    "\n",
    "btdc_universo['PC_UT_DEC_6to5'] = np.where(btdc_universo['PCT_UT_6_MES']>btdc_universo['PCT_UT_5_MES'], 1, 0)\n",
    "btdc_universo['PC_UT_DEC_5to4'] = np.where(btdc_universo['PCT_UT_5_MES']>btdc_universo['PCT_UT_4_MES'], 1, 0)\n",
    "btdc_universo['PC_UT_DEC_4to3'] = np.where(btdc_universo['PCT_UT_4_MES']>btdc_universo['PCT_UT_3_MES'], 1, 0)\n",
    "btdc_universo['PC_UT_DEC_3to2'] = np.where(btdc_universo['PCT_UT_3_MES']>btdc_universo['PCT_UT_2_MES'], 1, 0)\n",
    "btdc_universo['PC_UT_DEC_2to1'] = np.where(btdc_universo['PCT_UT_2_MES']>btdc_universo['PCT_UT_1_MES'], 1, 0)\n",
    "btdc_universo['PC_UT_DEC_1to0'] = np.where(btdc_universo['PCT_UT_1_MES']>btdc_universo['PCT_UT_TOT_ACT'], 1, 0)\n",
    "btdc_universo['PCT_UT_TOT_DECS'] = btdc_universo[['PC_UT_DEC_6to5', 'PC_UT_DEC_5to4', 'PC_UT_DEC_4to3', 'PC_UT_DEC_3to2', \n",
    "                                                  'PC_UT_DEC_2to1', 'PC_UT_DEC_1to0']].sum(axis=1)\n",
    "\n",
    "# Meses desde max y min del porcentaje de utilizacion\n",
    "btdc_universo['TIME_SDO_PCT_UT_MAX'] = btdc_universo[['PCT_UT_TOT_ACT', 'PCT_UT_1_MES', 'PCT_UT_2_MES', 'PCT_UT_3_MES', \n",
    "                                                      'PCT_UT_4_MES', 'PCT_UT_5_MES', 'PCT_UT_6_MES']].idxmax(axis=1)\n",
    "btdc_universo['TIME_SDO_PCT_UT_MIN'] = btdc_universo[['PCT_UT_TOT_ACT', 'PCT_UT_1_MES', 'PCT_UT_2_MES', 'PCT_UT_3_MES', \n",
    "                                                      'PCT_UT_4_MES', 'PCT_UT_5_MES', 'PCT_UT_6_MES']].idxmin(axis=1)\n",
    "btdc_universo['TIME_SDO_PCT_UT_MAX'] = btdc_universo['TIME_SDO_PCT_UT_MAX'].str.extract('(\\d+)').astype(float)\n",
    "btdc_universo['TIME_SDO_PCT_UT_MIN'] = btdc_universo['TIME_SDO_PCT_UT_MIN'].str.extract('(\\d+)').astype(float)\n",
    "btdc_universo.loc[:, ('TIME_SDO_PCT_UT_MAX')].fillna(0, inplace=True)\n",
    "btdc_universo.loc[:, ('TIME_SDO_PCT_UT_MIN')].fillna(0, inplace=True)\n",
    "btdc_universo.drop(['PC_UT_INC_6to5', 'PC_UT_INC_5to4', 'PC_UT_INC_4to3', 'PC_UT_INC_3to2', 'PC_UT_INC_2to1', \n",
    "                    'PC_UT_INC_1to0', 'PC_UT_DEC_6to5', 'PC_UT_DEC_5to4', 'PC_UT_DEC_4to3', 'PC_UT_DEC_3to2', \n",
    "                    'PC_UT_DEC_2to1', 'PC_UT_DEC_1to0'], axis=1, inplace=True)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 19,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Variables de meses desde Saldo max y min\n",
    "btdc_universo['TIME_SDO_MAX'] = btdc_universo[['SDO_TOT_ACT', 'SALDO_TOT_1_MES', 'SALDO_TOT_2_MES', 'SALDO_TOT_3_MES', \n",
    "                                               'SALDO_TOT_4_MES', 'SALDO_TOT_5_MES', 'SALDO_TOT_6_MES']].idxmax(axis=1)\n",
    "btdc_universo['TIME_SDO_MIN'] = btdc_universo[['SDO_TOT_ACT', 'SALDO_TOT_1_MES', 'SALDO_TOT_2_MES', 'SALDO_TOT_3_MES', \n",
    "                                               'SALDO_TOT_4_MES', 'SALDO_TOT_5_MES', 'SALDO_TOT_6_MES']].idxmin(axis=1)\n",
    "btdc_universo['TIME_SDO_MAX'] = btdc_universo['TIME_SDO_MAX'].str.extract('(\\d+)').astype(float)\n",
    "btdc_universo['TIME_SDO_MIN'] = btdc_universo['TIME_SDO_MIN'].str.extract('(\\d+)').astype(float)\n",
    "btdc_universo.loc[:, ('TIME_SDO_MAX')].fillna(0, inplace=True)\n",
    "btdc_universo.loc[:, ('TIME_SDO_MIN')].fillna(0, inplace=True)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 20,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Variables de MOPs\n",
    "btdc_universo.loc[btdc_universo['DIAS_ATRASO_ACT']==0, 'MOP_ACT'] = 1\n",
    "btdc_universo.loc[((btdc_universo['DIAS_ATRASO_ACT']>0) & (btdc_universo['DIAS_ATRASO_ACT']<30)), 'MOP_ACT'] = 2\n",
    "btdc_universo.loc[((btdc_universo['DIAS_ATRASO_ACT']>=30) & (btdc_universo['DIAS_ATRASO_ACT']<60)), 'MOP_ACT'] = 3\n",
    "btdc_universo.loc[((btdc_universo['DIAS_ATRASO_ACT']>=60) & (btdc_universo['DIAS_ATRASO_ACT']<90)), 'MOP_ACT'] = 4\n",
    "btdc_universo.loc[((btdc_universo['DIAS_ATRASO_ACT']>=90)), 'MOP_ACT'] = 5\n",
    "\n",
    "btdc_universo['MOP_01M'] = btdc_universo.groupby(['CREDITO'])['MOP_ACT'].shift(1)\n",
    "btdc_universo['MOP_02M'] = btdc_universo.groupby(['CREDITO'])['MOP_ACT'].shift(2)\n",
    "btdc_universo['MOP_03M'] = btdc_universo.groupby(['CREDITO'])['MOP_ACT'].shift(3)\n",
    "btdc_universo['MOP_04M'] = btdc_universo.groupby(['CREDITO'])['MOP_ACT'].shift(4)\n",
    "btdc_universo['MOP_05M'] = btdc_universo.groupby(['CREDITO'])['MOP_ACT'].shift(5)\n",
    "btdc_universo['MOP_06M'] = btdc_universo.groupby(['CREDITO'])['MOP_ACT'].shift(6)\n",
    "\n",
    "btdc_universo['MOP_MAX'] = btdc_universo[['MOP_ACT', 'MOP_01M', 'MOP_02M', 'MOP_03M', 'MOP_04M', 'MOP_05M', \n",
    "                                          'MOP_06M']].max(axis=1)\n",
    "btdc_universo['MOP_MIN'] = btdc_universo[['MOP_ACT', 'MOP_01M', 'MOP_02M', 'MOP_03M', 'MOP_04M', 'MOP_05M', \n",
    "                                          'MOP_06M']].min(axis=1)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 21,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Variables de incrementos y decrementos del mop\n",
    "btdc_universo['MOP_INC_6to5'] = np.where(btdc_universo['MOP_06M']<btdc_universo['MOP_05M'], 1, 0)\n",
    "btdc_universo['MOP_INC_5to4'] = np.where(btdc_universo['MOP_05M']<btdc_universo['MOP_04M'], 1, 0)\n",
    "btdc_universo['MOP_INC_4to3'] = np.where(btdc_universo['MOP_04M']<btdc_universo['MOP_03M'], 1, 0)\n",
    "btdc_universo['MOP_INC_3to2'] = np.where(btdc_universo['MOP_03M']<btdc_universo['MOP_02M'], 1, 0)\n",
    "btdc_universo['MOP_INC_2to1'] = np.where(btdc_universo['MOP_02M']<btdc_universo['MOP_01M'], 1, 0)\n",
    "btdc_universo['MOP_INC_1to0'] = np.where(btdc_universo['MOP_01M']<btdc_universo['MOP_ACT'], 1, 0)\n",
    "btdc_universo['MOP_INCS'] = btdc_universo[['MOP_INC_6to5', 'MOP_INC_5to4', 'MOP_INC_4to3', 'MOP_INC_3to2', 'MOP_INC_2to1', \n",
    "                                           'MOP_INC_1to0']].sum(axis=1)\n",
    "\n",
    "btdc_universo['MOP_DEC_6to5'] = np.where(btdc_universo['MOP_06M']>btdc_universo['MOP_05M'], 1, 0)\n",
    "btdc_universo['MOP_DEC_5to4'] = np.where(btdc_universo['MOP_05M']>btdc_universo['MOP_04M'], 1, 0)\n",
    "btdc_universo['MOP_DEC_4to3'] = np.where(btdc_universo['MOP_04M']>btdc_universo['MOP_03M'], 1, 0)\n",
    "btdc_universo['MOP_DEC_3to2'] = np.where(btdc_universo['MOP_03M']>btdc_universo['MOP_02M'], 1, 0)\n",
    "btdc_universo['MOP_DEC_2to1'] = np.where(btdc_universo['MOP_02M']>btdc_universo['MOP_01M'], 1, 0)\n",
    "btdc_universo['MOP_DEC_1to0'] = np.where(btdc_universo['MOP_01M']>btdc_universo['MOP_ACT'], 1, 0)\n",
    "btdc_universo['MOP_DECS'] = btdc_universo[['MOP_DEC_6to5', 'MOP_DEC_5to4', 'MOP_DEC_4to3', 'MOP_DEC_3to2', 'MOP_DEC_2to1', \n",
    "                                           'MOP_DEC_1to0']].sum(axis=1)\n",
    "btdc_universo.drop(['MOP_INC_6to5', 'MOP_INC_5to4', 'MOP_INC_4to3', 'MOP_INC_3to2', 'MOP_INC_2to1', 'MOP_INC_1to0', \n",
    "                    'MOP_DEC_6to5', 'MOP_DEC_5to4', 'MOP_DEC_4to3', 'MOP_DEC_3to2', 'MOP_DEC_2to1', 'MOP_DEC_1to0'],\n",
    "                     axis=1, inplace=True)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 22,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Variables de veces que aparecen los MOPs\n",
    "btdc_universo['MOP_VCS1'] = btdc_universo[['MOP_01M', 'MOP_02M', 'MOP_03M', 'MOP_04M', 'MOP_05M', 'MOP_06M']].isin([1]).sum(1)\n",
    "btdc_universo['MOP_VCS2'] = btdc_universo[['MOP_01M', 'MOP_02M', 'MOP_03M', 'MOP_04M', 'MOP_05M', 'MOP_06M']].isin([2]).sum(1)\n",
    "btdc_universo['MOP_VCS3'] = btdc_universo[['MOP_01M', 'MOP_02M', 'MOP_03M', 'MOP_04M', 'MOP_05M', 'MOP_06M']].isin([3]).sum(1)\n",
    "btdc_universo['MOP_VCS4'] = btdc_universo[['MOP_01M', 'MOP_02M', 'MOP_03M', 'MOP_04M', 'MOP_05M', 'MOP_06M']].isin([4]).sum(1)\n",
    "btdc_universo['MOP_VCS5'] = btdc_universo[['MOP_01M', 'MOP_02M', 'MOP_03M', 'MOP_04M', 'MOP_05M', 'MOP_06M']].isin([5]).sum(1)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 23,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Variables de meses desde mop max y min\n",
    "btdc_universo['TIME_MOP_MAX'] = btdc_universo[['MOP_ACT', 'MOP_01M', 'MOP_02M', 'MOP_03M', 'MOP_04M', 'MOP_05M', \n",
    "                                               'MOP_06M']].idxmax(axis=1)\n",
    "btdc_universo['TIME_MOP_MIN'] = btdc_universo[['MOP_ACT', 'MOP_01M', 'MOP_02M', 'MOP_03M', 'MOP_04M', 'MOP_05M', \n",
    "                                               'MOP_06M']].idxmin(axis=1)\n",
    "btdc_universo['TIME_MOP_MAX'] = btdc_universo['TIME_MOP_MAX'].str.extract('(\\d+)').astype(float)\n",
    "btdc_universo['TIME_MOP_MIN'] = btdc_universo['TIME_MOP_MIN'].str.extract('(\\d+)').astype(float)\n",
    "btdc_universo.loc[:, ('TIME_MOP_MAX')].fillna(0, inplace=True)\n",
    "btdc_universo.loc[:, ('TIME_MOP_MIN')].fillna(0, inplace=True)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 24,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Variables de meses desde que ha estado en cierto nivel de mop\n",
    "btdc_universo['TIME_MOP_5+'] = ''\n",
    "btdc_universo['TIME_MOP_5+'] = np.where(btdc_universo['MOP_06M']==5, 6, btdc_universo['TIME_MOP_5+'])\n",
    "btdc_universo['TIME_MOP_5+'] = np.where(btdc_universo['MOP_05M']==5, 5, btdc_universo['TIME_MOP_5+'])\n",
    "btdc_universo['TIME_MOP_5+'] = np.where(btdc_universo['MOP_04M']==5, 4, btdc_universo['TIME_MOP_5+'])\n",
    "btdc_universo['TIME_MOP_5+'] = np.where(btdc_universo['MOP_03M']==5, 3, btdc_universo['TIME_MOP_5+'])\n",
    "btdc_universo['TIME_MOP_5+'] = np.where(btdc_universo['MOP_02M']==5, 2, btdc_universo['TIME_MOP_5+'])\n",
    "btdc_universo['TIME_MOP_5+'] = np.where(btdc_universo['MOP_01M']==5, 1, btdc_universo['TIME_MOP_5+'])\n",
    "btdc_universo['TIME_MOP_5+'] = np.where(btdc_universo['MOP_ACT']==5, 0, btdc_universo['TIME_MOP_5+'])\n",
    "\n",
    "btdc_universo['TIME_MOP_4+'] = ''\n",
    "btdc_universo['TIME_MOP_4+'] = np.where(btdc_universo['MOP_06M']>=4, 6, btdc_universo['TIME_MOP_4+'])\n",
    "btdc_universo['TIME_MOP_4+'] = np.where(btdc_universo['MOP_05M']>=4, 5, btdc_universo['TIME_MOP_4+'])\n",
    "btdc_universo['TIME_MOP_4+'] = np.where(btdc_universo['MOP_04M']>=4, 4, btdc_universo['TIME_MOP_4+'])\n",
    "btdc_universo['TIME_MOP_4+'] = np.where(btdc_universo['MOP_03M']>=4, 3, btdc_universo['TIME_MOP_4+'])\n",
    "btdc_universo['TIME_MOP_4+'] = np.where(btdc_universo['MOP_02M']>=4, 2, btdc_universo['TIME_MOP_4+'])\n",
    "btdc_universo['TIME_MOP_4+'] = np.where(btdc_universo['MOP_01M']>=4, 1, btdc_universo['TIME_MOP_4+'])\n",
    "btdc_universo['TIME_MOP_4+'] = np.where(btdc_universo['MOP_ACT']>=4, 0, btdc_universo['TIME_MOP_4+'])\n",
    "\n",
    "btdc_universo['TIME_MOP_3+'] = ''\n",
    "btdc_universo['TIME_MOP_3+'] = np.where(btdc_universo['MOP_06M']>=3, 6, btdc_universo['TIME_MOP_3+'])\n",
    "btdc_universo['TIME_MOP_3+'] = np.where(btdc_universo['MOP_05M']>=3, 5, btdc_universo['TIME_MOP_3+'])\n",
    "btdc_universo['TIME_MOP_3+'] = np.where(btdc_universo['MOP_04M']>=3, 4, btdc_universo['TIME_MOP_3+'])\n",
    "btdc_universo['TIME_MOP_3+'] = np.where(btdc_universo['MOP_03M']>=3, 3, btdc_universo['TIME_MOP_3+'])\n",
    "btdc_universo['TIME_MOP_3+'] = np.where(btdc_universo['MOP_02M']>=3, 2, btdc_universo['TIME_MOP_3+'])\n",
    "btdc_universo['TIME_MOP_3+'] = np.where(btdc_universo['MOP_01M']>=3, 1, btdc_universo['TIME_MOP_3+'])\n",
    "btdc_universo['TIME_MOP_3+'] = np.where(btdc_universo['MOP_ACT']>=3, 0, btdc_universo['TIME_MOP_3+'])\n",
    "\n",
    "btdc_universo['TIME_MOP_2+'] = ''\n",
    "btdc_universo['TIME_MOP_2+'] = np.where(btdc_universo['MOP_06M']>=2, 6, btdc_universo['TIME_MOP_2+'])\n",
    "btdc_universo['TIME_MOP_2+'] = np.where(btdc_universo['MOP_05M']>=2, 5, btdc_universo['TIME_MOP_2+'])\n",
    "btdc_universo['TIME_MOP_2+'] = np.where(btdc_universo['MOP_04M']>=2, 4, btdc_universo['TIME_MOP_2+'])\n",
    "btdc_universo['TIME_MOP_2+'] = np.where(btdc_universo['MOP_03M']>=2, 3, btdc_universo['TIME_MOP_2+'])\n",
    "btdc_universo['TIME_MOP_2+'] = np.where(btdc_universo['MOP_02M']>=2, 2, btdc_universo['TIME_MOP_2+'])\n",
    "btdc_universo['TIME_MOP_2+'] = np.where(btdc_universo['MOP_01M']>=2, 1, btdc_universo['TIME_MOP_2+'])\n",
    "btdc_universo['TIME_MOP_2+'] = np.where(btdc_universo['MOP_ACT']>=2, 0, btdc_universo['TIME_MOP_2+'])\n",
    "btdc_universo.drop(['MOP_01M', 'MOP_02M', 'MOP_03M', 'MOP_04M', 'MOP_05M', 'MOP_06M'], axis=1, inplace=True)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 25,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "0:04:10.201322\n"
     ]
    }
   ],
   "source": [
    "# Construimos las variables para hacer los flags de malos\n",
    "btdc_universo['ATRASO_1_MES_POST'] = btdc_universo.groupby(['CREDITO'])['DIAS_ATRASO_ACT'].shift(-1)\n",
    "btdc_universo['ATRASO_2_MES_POST'] = btdc_universo.groupby(['CREDITO'])['DIAS_ATRASO_ACT'].shift(-2)\n",
    "btdc_universo['ATRASO_3_MES_POST'] = btdc_universo.groupby(['CREDITO'])['DIAS_ATRASO_ACT'].shift(-3)\n",
    "btdc_universo['ATRASO_4_MES_POST'] = btdc_universo.groupby(['CREDITO'])['DIAS_ATRASO_ACT'].shift(-4)\n",
    "btdc_universo['ATRASO_5_MES_POST'] = btdc_universo.groupby(['CREDITO'])['DIAS_ATRASO_ACT'].shift(-5)\n",
    "btdc_universo['ATRASO_6_MES_POST'] = btdc_universo.groupby(['CREDITO'])['DIAS_ATRASO_ACT'].shift(-6)\n",
    "\n",
    "btdc_universo['max_atr@06m'] = btdc_universo[['ATRASO_1_MES_POST', 'ATRASO_2_MES_POST', 'ATRASO_3_MES_POST', \n",
    "                                'ATRASO_4_MES_POST', 'ATRASO_5_MES_POST', 'ATRASO_6_MES_POST']].max(axis=1)\n",
    "\n",
    "btdc_universo['veces_30+@06m'] = (btdc_universo[['ATRASO_1_MES_POST', 'ATRASO_2_MES_POST', 'ATRASO_3_MES_POST', \n",
    "                                'ATRASO_4_MES_POST', 'ATRASO_5_MES_POST', 'ATRASO_6_MES_POST']]>=30).sum(axis=1)\n",
    "\n",
    "btdc_universo.drop(['ATRASO_1_MES_POST', 'ATRASO_2_MES_POST', 'ATRASO_3_MES_POST', 'ATRASO_4_MES_POST', \n",
    "                    'ATRASO_5_MES_POST', 'ATRASO_6_MES_POST'], axis=1, inplace=True)\n",
    "print(datetime.now() - t1)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 26,
   "metadata": {
    "scrolled": true
   },
   "outputs": [
    {
     "data": {
      "text/plain": [
       "(2389564, 114)"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/plain": [
       "array(['CREDITO', 'CLIENTE', 'FECHA', 'DIAS_ATRASO_ACT', 'SDO_TOT_ACT',\n",
       "       'CARTERA_VENCIDA', 'LIMITELINEA', 'MONTO_MIN_ACT',\n",
       "       'MONTO_MIN_1_MES', 'MONTO_MIN_2_MES', 'MONTO_MIN_3_MES',\n",
       "       'MONTO_MIN_4_MES', 'MONTO_MIN_5_MES', 'MONTO_MIN_6_MES',\n",
       "       'PAGO_ACT', 'PAGO_1_MES', 'PAGO_2_MES', 'PAGO_3_MES', 'PAGO_4_MES',\n",
       "       'PAGO_5_MES', 'PAGO_6_MES', 'producto', 'mediosbloqueados',\n",
       "       'castigo_s06m', 'SALDO_TOT_1_MES', 'SALDO_TOT_2_MES',\n",
       "       'SALDO_TOT_3_MES', 'SALDO_TOT_4_MES', 'SALDO_TOT_5_MES',\n",
       "       'SALDO_TOT_6_MES', 'DIAS_ATRASO_1_MES', 'DIAS_ATRASO_2_MES',\n",
       "       'DIAS_ATRASO_3_MES', 'DIAS_ATRASO_4_MES', 'DIAS_ATRASO_5_MES',\n",
       "       'DIAS_ATRASO_6_MES', 'HIST_6M', 'IND_ACT', 'SDO_TOT_AVG',\n",
       "       'SDO_TOT_MAX', 'SDO_TOT_MIN', 'SDO_TOT_WAVG', 'SDO_TOT_INCS',\n",
       "       'SDO_TOT_DECS', 'SDO_VIG_ACT', 'SDO_VIG_1_MES', 'SDO_VIG_2_MES',\n",
       "       'SDO_VIG_3_MES', 'SDO_VIG_4_MES', 'SDO_VIG_5_MES', 'SDO_VIG_6_MES',\n",
       "       'SDO_VIG_AVG', 'SDO_VIG_MAX', 'SDO_VIG_MIN', 'SDO_VIG_WAVG',\n",
       "       'SDO_ATR_ACT', 'SDO_ATR_1_MES', 'SDO_ATR_2_MES', 'SDO_ATR_3_MES',\n",
       "       'SDO_ATR_4_MES', 'SDO_ATR_5_MES', 'SDO_ATR_6_MES', 'SDO_ATR_AVG',\n",
       "       'SDO_ATR_MAX', 'SDO_ATR_MIN', 'SDO_ATR_WAVG', 'SDO_VENC_ACT',\n",
       "       'SDO_VENC_1_MES', 'SDO_VENC_2_MES', 'SDO_VENC_3_MES',\n",
       "       'SDO_VENC_4_MES', 'SDO_VENC_5_MES', 'SDO_VENC_6_MES',\n",
       "       'SDO_VENC_AVG', 'SDO_VENC_MAX', 'SDO_VENC_MIN', 'SDO_VENC_WAVG',\n",
       "       'SDO_TOT_ACT-MAX', 'SDO_TOT_ACT-MIN', 'SDO_TOT_ACT-AVG',\n",
       "       'PCT_UT_TOT_ACT', 'PCT_UT_1_MES', 'PCT_UT_2_MES', 'PCT_UT_3_MES',\n",
       "       'PCT_UT_4_MES', 'PCT_UT_5_MES', 'PCT_UT_6_MES', 'PCT_UT_AVG',\n",
       "       'PCT_UT_MAX', 'PCT_UT_MIN', 'PCT_UT_TOT_INCS', 'PCT_UT_TOT_DECS',\n",
       "       'TIME_SDO_PCT_UT_MAX', 'TIME_SDO_PCT_UT_MIN', 'TIME_SDO_MAX',\n",
       "       'TIME_SDO_MIN', 'MOP_ACT', 'MOP_MAX', 'MOP_MIN', 'MOP_INCS',\n",
       "       'MOP_DECS', 'MOP_VCS1', 'MOP_VCS2', 'MOP_VCS3', 'MOP_VCS4',\n",
       "       'MOP_VCS5', 'TIME_MOP_MAX', 'TIME_MOP_MIN', 'TIME_MOP_5+',\n",
       "       'TIME_MOP_4+', 'TIME_MOP_3+', 'TIME_MOP_2+', 'max_atr@06m',\n",
       "       'veces_30+@06m'], dtype=object)"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    },
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>count</th>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>FECHA</th>\n",
       "      <th></th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>201708</th>\n",
       "      <td>69413</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201709</th>\n",
       "      <td>71204</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201710</th>\n",
       "      <td>72757</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201711</th>\n",
       "      <td>73916</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201712</th>\n",
       "      <td>74723</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201801</th>\n",
       "      <td>76272</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201802</th>\n",
       "      <td>77258</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201803</th>\n",
       "      <td>79128</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201804</th>\n",
       "      <td>80378</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201805</th>\n",
       "      <td>81651</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201806</th>\n",
       "      <td>82818</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201807</th>\n",
       "      <td>84392</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201808</th>\n",
       "      <td>85915</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201809</th>\n",
       "      <td>87148</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201810</th>\n",
       "      <td>88883</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201811</th>\n",
       "      <td>90694</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201812</th>\n",
       "      <td>91838</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201901</th>\n",
       "      <td>93336</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201902</th>\n",
       "      <td>94920</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201903</th>\n",
       "      <td>97011</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201904</th>\n",
       "      <td>99000</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201905</th>\n",
       "      <td>100886</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201906</th>\n",
       "      <td>103045</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201907</th>\n",
       "      <td>105175</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201908</th>\n",
       "      <td>107162</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201909</th>\n",
       "      <td>109132</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>201910</th>\n",
       "      <td>111509</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "</div>"
      ],
      "text/plain": [
       "         count\n",
       "FECHA         \n",
       "201708   69413\n",
       "201709   71204\n",
       "201710   72757\n",
       "201711   73916\n",
       "201712   74723\n",
       "201801   76272\n",
       "201802   77258\n",
       "201803   79128\n",
       "201804   80378\n",
       "201805   81651\n",
       "201806   82818\n",
       "201807   84392\n",
       "201808   85915\n",
       "201809   87148\n",
       "201810   88883\n",
       "201811   90694\n",
       "201812   91838\n",
       "201901   93336\n",
       "201902   94920\n",
       "201903   97011\n",
       "201904   99000\n",
       "201905  100886\n",
       "201906  103045\n",
       "201907  105175\n",
       "201908  107162\n",
       "201909  109132\n",
       "201910  111509"
      ]
     },
     "metadata": {},
     "output_type": "display_data"
    }
   ],
   "source": [
    "# Análisis base de universo def\n",
    "display(btdc_universo.shape)\n",
    "display(btdc_universo.columns.values)\n",
    "display(btdc_universo.groupby('FECHA').size().to_frame('count'))"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 27,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "0:04:10.329997\n"
     ]
    }
   ],
   "source": [
    "print(datetime.now()-t1)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 28,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "DIAS_ATRASO_ACT\n",
      "SDO_TOT_ACT\n",
      "CARTERA_VENCIDA\n",
      "LIMITELINEA\n",
      "MONTO_MIN_ACT\n",
      "MONTO_MIN_1_MES\n",
      "MONTO_MIN_2_MES\n",
      "MONTO_MIN_3_MES\n",
      "MONTO_MIN_4_MES\n",
      "MONTO_MIN_5_MES\n",
      "MONTO_MIN_6_MES\n",
      "PAGO_ACT\n",
      "PAGO_1_MES\n",
      "PAGO_2_MES\n",
      "PAGO_3_MES\n",
      "PAGO_4_MES\n",
      "PAGO_5_MES\n",
      "PAGO_6_MES\n",
      "SALDO_TOT_1_MES\n",
      "SALDO_TOT_2_MES\n",
      "SALDO_TOT_3_MES\n",
      "SALDO_TOT_4_MES\n",
      "SALDO_TOT_5_MES\n",
      "SALDO_TOT_6_MES\n",
      "DIAS_ATRASO_1_MES\n",
      "DIAS_ATRASO_2_MES\n",
      "DIAS_ATRASO_3_MES\n",
      "DIAS_ATRASO_4_MES\n",
      "DIAS_ATRASO_5_MES\n",
      "DIAS_ATRASO_6_MES\n",
      "HIST_6M\n",
      "IND_ACT\n",
      "SDO_TOT_AVG\n",
      "SDO_TOT_MAX\n",
      "SDO_TOT_MIN\n",
      "SDO_TOT_WAVG\n",
      "SDO_TOT_INCS\n",
      "SDO_TOT_DECS\n",
      "SDO_VIG_ACT\n",
      "SDO_VIG_1_MES\n",
      "SDO_VIG_2_MES\n",
      "SDO_VIG_3_MES\n",
      "SDO_VIG_4_MES\n",
      "SDO_VIG_5_MES\n",
      "SDO_VIG_6_MES\n",
      "SDO_VIG_AVG\n",
      "SDO_VIG_MAX\n",
      "SDO_VIG_MIN\n",
      "SDO_VIG_WAVG\n",
      "SDO_ATR_ACT\n",
      "SDO_ATR_1_MES\n",
      "SDO_ATR_2_MES\n",
      "SDO_ATR_3_MES\n",
      "SDO_ATR_4_MES\n",
      "SDO_ATR_5_MES\n",
      "SDO_ATR_6_MES\n",
      "SDO_ATR_AVG\n",
      "SDO_ATR_MAX\n",
      "SDO_ATR_MIN\n",
      "SDO_ATR_WAVG\n",
      "SDO_VENC_ACT\n",
      "SDO_VENC_1_MES\n",
      "SDO_VENC_2_MES\n",
      "SDO_VENC_3_MES\n",
      "SDO_VENC_4_MES\n",
      "SDO_VENC_5_MES\n",
      "SDO_VENC_6_MES\n",
      "SDO_VENC_AVG\n",
      "SDO_VENC_MAX\n",
      "SDO_VENC_MIN\n",
      "SDO_VENC_WAVG\n",
      "SDO_TOT_ACT-MAX\n",
      "SDO_TOT_ACT-MIN\n",
      "SDO_TOT_ACT-AVG\n",
      "PCT_UT_TOT_ACT\n",
      "PCT_UT_1_MES\n",
      "PCT_UT_2_MES\n",
      "PCT_UT_3_MES\n",
      "PCT_UT_4_MES\n",
      "PCT_UT_5_MES\n",
      "PCT_UT_6_MES\n",
      "PCT_UT_AVG\n",
      "PCT_UT_MAX\n",
      "PCT_UT_MIN\n",
      "PCT_UT_TOT_INCS\n",
      "PCT_UT_TOT_DECS\n",
      "TIME_SDO_PCT_UT_MAX\n",
      "TIME_SDO_PCT_UT_MIN\n",
      "TIME_SDO_MAX\n",
      "TIME_SDO_MIN\n",
      "MOP_ACT\n",
      "MOP_MAX\n",
      "MOP_MIN\n",
      "MOP_INCS\n",
      "MOP_DECS\n",
      "MOP_VCS1\n",
      "MOP_VCS2\n",
      "MOP_VCS3\n",
      "MOP_VCS4\n",
      "MOP_VCS5\n",
      "TIME_MOP_MAX\n",
      "TIME_MOP_MIN\n",
      "TIME_MOP_5+\n",
      "TIME_MOP_4+\n",
      "TIME_MOP_3+\n",
      "TIME_MOP_2+\n"
     ]
    },
    {
     "data": {
      "text/plain": [
       "list"
      ]
     },
     "execution_count": 28,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "VARIABLES_CARTERA = list(btdc_universo.columns)\n",
    "VARIABLES_CARTERA.remove('CREDITO')\n",
    "VARIABLES_CARTERA.remove('CLIENTE')\n",
    "VARIABLES_CARTERA.remove('FECHA')\n",
    "VARIABLES_CARTERA.remove('producto')\n",
    "VARIABLES_CARTERA.remove('mediosbloqueados')\n",
    "VARIABLES_CARTERA.remove('castigo_s06m')\n",
    "VARIABLES_CARTERA.remove('max_atr@06m')\n",
    "VARIABLES_CARTERA.remove('veces_30+@06m')\n",
    "\n",
    "for i in VARIABLES_CARTERA:\n",
    "    print(i)\n",
    "    \n",
    "type(VARIABLES_CARTERA)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": 33,
   "metadata": {},
   "outputs": [],
   "source": [
    "# VALIDACION DE VARIABLES\n",
    "# btdc_universo.loc[((btdc_universo['CREDITO']=='0000072965')), ('FECHA', 'DIAS_ATRASO_ACT', 'CARTERA_VENCIDA', 'SDO_TOT_ACT', \n",
    "#                    'IND_HIST_6M', 'IND_HIST6M_2')].tail(15)\n",
    "# 0000053361 < Credito con fechas al corriente, atrasadas y vencidas, perfecto para validar la construcción de variables\n",
    "# 0000072965 < Cred con limite de linea = 1    btdc_universo['SALDO_06M'].notnull())\n",
    "\n",
    "# ((btdc_universo['CREDITO']=='0000072965'))      btdc_universo['MESES_ANT']==5\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": [
    "   "
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 29,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': 'FCE74AE4960A75F1',\n",
       "  'HostId': '1Oa41LhAt25qWO4IQSU2WsSs18oGjA2LkOY+XzHQwDw28vwYS7/sVI+2hBd1hPCpFBuCix5nBYE=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': '1Oa41LhAt25qWO4IQSU2WsSs18oGjA2LkOY+XzHQwDw28vwYS7/sVI+2hBd1hPCpFBuCix5nBYE=',\n",
       "   'x-amz-request-id': 'FCE74AE4960A75F1',\n",
       "   'date': 'Mon, 04 Nov 2019 17:14:24 GMT',\n",
       "   'etag': '\"1b2f4a64b2190fce539c2c99d21dc8bc\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"1b2f4a64b2190fce539c2c99d21dc8bc\"'}"
      ]
     },
     "execution_count": 29,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# PARA GUARDAR BASES DE DATOS EN S3\n",
    "# t2 = datetime.now()\n",
    "# btdc_universo = btdc_universo.loc[(btdc_universo['FECHA']>'201802'), :]\n",
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/BTDC_CO_VARIABLES_V6.csv\" \n",
    "\n",
    "# f_str = io.StringIO()\n",
    "# btdc_universo.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 30,
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "0:03:22.130093\n"
     ]
    }
   ],
   "source": [
    "print(datetime.now()-t2)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": 40,
   "metadata": {},
   "outputs": [],
   "source": [
    "# Para leer archivos de S3 guardados desde Sagemaker\n",
    "# bucket = 'boi-banregio'\n",
    "# s3_bucket_resource = boto3.resource('s3').Bucket(bucket)\n",
    "\n",
    "# def retrievs3_v2(file_key, index_col=None, sep=',', header=None):\n",
    "#     obj = s3_bucket_resource.Object(file_key).get()\n",
    "#     df = pd.read_csv(\n",
    "#         io.BytesIO(obj['Body'].read()),\n",
    "#         index_col=index_col,\n",
    "#         sep=',',\n",
    "#         dtype=str\n",
    "#     )\n",
    "#     return df\n",
    "\n",
    "# file_key = \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/BTDC_CO_VARIABLES_V4.csv\"\n",
    "# btdc_universo1 = retrievs3_v2(file_key)\n",
    "\n",
    "\n",
    "\n"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 32,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/html": [
       "<div>\n",
       "<style scoped>\n",
       "    .dataframe tbody tr th:only-of-type {\n",
       "        vertical-align: middle;\n",
       "    }\n",
       "\n",
       "    .dataframe tbody tr th {\n",
       "        vertical-align: top;\n",
       "    }\n",
       "\n",
       "    .dataframe thead th {\n",
       "        text-align: right;\n",
       "    }\n",
       "</style>\n",
       "<table border=\"1\" class=\"dataframe\">\n",
       "  <thead>\n",
       "    <tr style=\"text-align: right;\">\n",
       "      <th></th>\n",
       "      <th>CREDITO</th>\n",
       "      <th>CLIENTE</th>\n",
       "      <th>FECHA</th>\n",
       "      <th>DIAS_ATRASO_ACT</th>\n",
       "      <th>SDO_TOT_ACT</th>\n",
       "      <th>CARTERA_VENCIDA</th>\n",
       "      <th>LIMITELINEA</th>\n",
       "      <th>MONTO_MIN_ACT</th>\n",
       "      <th>MONTO_MIN_1_MES</th>\n",
       "      <th>MONTO_MIN_2_MES</th>\n",
       "      <th>...</th>\n",
       "      <th>MOP_VCS4</th>\n",
       "      <th>MOP_VCS5</th>\n",
       "      <th>TIME_MOP_MAX</th>\n",
       "      <th>TIME_MOP_MIN</th>\n",
       "      <th>TIME_MOP_5+</th>\n",
       "      <th>TIME_MOP_4+</th>\n",
       "      <th>TIME_MOP_3+</th>\n",
       "      <th>TIME_MOP_2+</th>\n",
       "      <th>max_atr@06m</th>\n",
       "      <th>veces_30+@06m</th>\n",
       "    </tr>\n",
       "  </thead>\n",
       "  <tbody>\n",
       "    <tr>\n",
       "      <th>515543</th>\n",
       "      <td>0000236243</td>\n",
       "      <td>14000151</td>\n",
       "      <td>201803</td>\n",
       "      <td>0</td>\n",
       "      <td>0.00</td>\n",
       "      <td>0.0</td>\n",
       "      <td>40000.0</td>\n",
       "      <td>0.0</td>\n",
       "      <td>0.0</td>\n",
       "      <td>0.00</td>\n",
       "      <td>...</td>\n",
       "      <td>0</td>\n",
       "      <td>0</td>\n",
       "      <td>0.0</td>\n",
       "      <td>0.0</td>\n",
       "      <td></td>\n",
       "      <td></td>\n",
       "      <td></td>\n",
       "      <td></td>\n",
       "      <td>0.0</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>515544</th>\n",
       "      <td>0000006167</td>\n",
       "      <td>02900673</td>\n",
       "      <td>201803</td>\n",
       "      <td>0</td>\n",
       "      <td>6403.36</td>\n",
       "      <td>0.0</td>\n",
       "      <td>50000.0</td>\n",
       "      <td>0.0</td>\n",
       "      <td>0.0</td>\n",
       "      <td>625.00</td>\n",
       "      <td>...</td>\n",
       "      <td>0</td>\n",
       "      <td>0</td>\n",
       "      <td>0.0</td>\n",
       "      <td>0.0</td>\n",
       "      <td></td>\n",
       "      <td></td>\n",
       "      <td></td>\n",
       "      <td></td>\n",
       "      <td>0.0</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>515545</th>\n",
       "      <td>0000039807</td>\n",
       "      <td>02900614</td>\n",
       "      <td>201803</td>\n",
       "      <td>0</td>\n",
       "      <td>24504.25</td>\n",
       "      <td>0.0</td>\n",
       "      <td>51000.0</td>\n",
       "      <td>1034.0</td>\n",
       "      <td>2836.0</td>\n",
       "      <td>1490.00</td>\n",
       "      <td>...</td>\n",
       "      <td>0</td>\n",
       "      <td>0</td>\n",
       "      <td>2.0</td>\n",
       "      <td>0.0</td>\n",
       "      <td></td>\n",
       "      <td></td>\n",
       "      <td></td>\n",
       "      <td>2</td>\n",
       "      <td>15.0</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>515546</th>\n",
       "      <td>0000044152</td>\n",
       "      <td>02900682</td>\n",
       "      <td>201803</td>\n",
       "      <td>0</td>\n",
       "      <td>0.00</td>\n",
       "      <td>0.0</td>\n",
       "      <td>75000.0</td>\n",
       "      <td>0.0</td>\n",
       "      <td>0.0</td>\n",
       "      <td>0.00</td>\n",
       "      <td>...</td>\n",
       "      <td>0</td>\n",
       "      <td>0</td>\n",
       "      <td>0.0</td>\n",
       "      <td>0.0</td>\n",
       "      <td></td>\n",
       "      <td></td>\n",
       "      <td></td>\n",
       "      <td></td>\n",
       "      <td>0.0</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "    <tr>\n",
       "      <th>515547</th>\n",
       "      <td>0000004335</td>\n",
       "      <td>02900626</td>\n",
       "      <td>201803</td>\n",
       "      <td>0</td>\n",
       "      <td>97776.55</td>\n",
       "      <td>0.0</td>\n",
       "      <td>200000.0</td>\n",
       "      <td>2500.0</td>\n",
       "      <td>2500.0</td>\n",
       "      <td>1641.55</td>\n",
       "      <td>...</td>\n",
       "      <td>0</td>\n",
       "      <td>0</td>\n",
       "      <td>0.0</td>\n",
       "      <td>0.0</td>\n",
       "      <td></td>\n",
       "      <td></td>\n",
       "      <td></td>\n",
       "      <td></td>\n",
       "      <td>0.0</td>\n",
       "      <td>0</td>\n",
       "    </tr>\n",
       "  </tbody>\n",
       "</table>\n",
       "<p>5 rows × 114 columns</p>\n",
       "</div>"
      ],
      "text/plain": [
       "           CREDITO   CLIENTE   FECHA  DIAS_ATRASO_ACT  SDO_TOT_ACT  \\\n",
       "515543  0000236243  14000151  201803                0         0.00   \n",
       "515544  0000006167  02900673  201803                0      6403.36   \n",
       "515545  0000039807  02900614  201803                0     24504.25   \n",
       "515546  0000044152  02900682  201803                0         0.00   \n",
       "515547  0000004335  02900626  201803                0     97776.55   \n",
       "\n",
       "        CARTERA_VENCIDA  LIMITELINEA  MONTO_MIN_ACT  MONTO_MIN_1_MES  \\\n",
       "515543              0.0      40000.0            0.0              0.0   \n",
       "515544              0.0      50000.0            0.0              0.0   \n",
       "515545              0.0      51000.0         1034.0           2836.0   \n",
       "515546              0.0      75000.0            0.0              0.0   \n",
       "515547              0.0     200000.0         2500.0           2500.0   \n",
       "\n",
       "        MONTO_MIN_2_MES  ...  MOP_VCS4  MOP_VCS5  TIME_MOP_MAX  TIME_MOP_MIN  \\\n",
       "515543             0.00  ...         0         0           0.0           0.0   \n",
       "515544           625.00  ...         0         0           0.0           0.0   \n",
       "515545          1490.00  ...         0         0           2.0           0.0   \n",
       "515546             0.00  ...         0         0           0.0           0.0   \n",
       "515547          1641.55  ...         0         0           0.0           0.0   \n",
       "\n",
       "        TIME_MOP_5+  TIME_MOP_4+  TIME_MOP_3+  TIME_MOP_2+  max_atr@06m  \\\n",
       "515543                                                              0.0   \n",
       "515544                                                              0.0   \n",
       "515545                                                   2         15.0   \n",
       "515546                                                              0.0   \n",
       "515547                                                              0.0   \n",
       "\n",
       "        veces_30+@06m  \n",
       "515543              0  \n",
       "515544              0  \n",
       "515545              0  \n",
       "515546              0  \n",
       "515547              0  \n",
       "\n",
       "[5 rows x 114 columns]"
      ]
     },
     "execution_count": 32,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "btdc_universo.head()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": 60,
   "metadata": {},
   "outputs": [],
   "source": []
  },
  {
   "cell_type": "code",
   "execution_count": 33,
   "metadata": {},
   "outputs": [],
   "source": [
    "btdc_universo=btdc_universo.rename(columns = {'IND_HIST6M_2':'HIST_6M'})"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 34,
   "metadata": {},
   "outputs": [],
   "source": [
    "BTDC_CO_VARIABLES_201803 = btdc_universo.loc[btdc_universo['FECHA']=='201803',:]\n",
    "BTDC_CO_VARIABLES_201804 = btdc_universo.loc[btdc_universo['FECHA']=='201804',:]\n",
    "BTDC_CO_VARIABLES_201805 = btdc_universo.loc[btdc_universo['FECHA']=='201805',:]\n",
    "BTDC_CO_VARIABLES_201806 = btdc_universo.loc[btdc_universo['FECHA']=='201806',:]\n",
    "BTDC_CO_VARIABLES_201807 = btdc_universo.loc[btdc_universo['FECHA']=='201807',:]\n",
    "BTDC_CO_VARIABLES_201808 = btdc_universo.loc[btdc_universo['FECHA']=='201808',:]\n",
    "BTDC_CO_VARIABLES_201809 = btdc_universo.loc[btdc_universo['FECHA']=='201809',:]\n",
    "BTDC_CO_VARIABLES_201810 = btdc_universo.loc[btdc_universo['FECHA']=='201810',:]\n",
    "BTDC_CO_VARIABLES_201811 = btdc_universo.loc[btdc_universo['FECHA']=='201811',:]\n",
    "BTDC_CO_VARIABLES_201812 = btdc_universo.loc[btdc_universo['FECHA']=='201812',:]\n",
    "\n",
    "BTDC_CO_VARIABLES_201901 = btdc_universo.loc[btdc_universo['FECHA']=='201901',:]\n",
    "BTDC_CO_VARIABLES_201902 = btdc_universo.loc[btdc_universo['FECHA']=='201902',:]\n",
    "BTDC_CO_VARIABLES_201903 = btdc_universo.loc[btdc_universo['FECHA']=='201903',:]\n",
    "BTDC_CO_VARIABLES_201904 = btdc_universo.loc[btdc_universo['FECHA']=='201904',:]\n",
    "BTDC_CO_VARIABLES_201905 = btdc_universo.loc[btdc_universo['FECHA']=='201905',:]\n",
    "BTDC_CO_VARIABLES_201906 = btdc_universo.loc[btdc_universo['FECHA']=='201906',:]\n",
    "BTDC_CO_VARIABLES_201907 = btdc_universo.loc[btdc_universo['FECHA']=='201907',:]\n",
    "BTDC_CO_VARIABLES_201908 = btdc_universo.loc[btdc_universo['FECHA']=='201908',:]\n",
    "BTDC_CO_VARIABLES_201909 = btdc_universo.loc[btdc_universo['FECHA']=='201909',:]\n",
    "\n",
    "BTDC_CO_VARIABLES_201910 = btdc_universo.loc[btdc_universo['FECHA']=='201910',:]"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 35,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': 'AE7111397798B63C',\n",
       "  'HostId': 'FBIW/pa1glIKwUNmOlcjaEHpUezXp/YZsiZ7IxCHH5pVpmbgj/t8tzjMPtDgdb7vRz4Dc6pzbqY=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'FBIW/pa1glIKwUNmOlcjaEHpUezXp/YZsiZ7IxCHH5pVpmbgj/t8tzjMPtDgdb7vRz4Dc6pzbqY=',\n",
       "   'x-amz-request-id': 'AE7111397798B63C',\n",
       "   'date': 'Mon, 04 Nov 2019 17:24:01 GMT',\n",
       "   'etag': '\"2664d6e8eaa5688dd979f5dc08db4ef9\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"2664d6e8eaa5688dd979f5dc08db4ef9\"'}"
      ]
     },
     "execution_count": 35,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201910/BTDC_CO_VARIABLES_201910.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201910.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 69,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': '907E99F3B1F38FB1',\n",
       "  'HostId': 'sGl4HBbAA8NH50XSL+TpWHPNENQYQEr1CgstrbI1eANiZvunf2/8sQvqAstEd1cd/kKTAhyLEBs=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'sGl4HBbAA8NH50XSL+TpWHPNENQYQEr1CgstrbI1eANiZvunf2/8sQvqAstEd1cd/kKTAhyLEBs=',\n",
       "   'x-amz-request-id': '907E99F3B1F38FB1',\n",
       "   'date': 'Mon, 14 Oct 2019 23:12:06 GMT',\n",
       "   'etag': '\"b4b7c314afaa9a5c14b72d957be6d576\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"b4b7c314afaa9a5c14b72d957be6d576\"'}"
      ]
     },
     "execution_count": 69,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201804/BTDC_CO_VARIABLES_201804.csv\"\n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201804.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 71,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': '43D60D0F0A37B8B0',\n",
       "  'HostId': 'pm2rdC9bOz7DylP2Elq90ir4gKr8LnhvgLTaLxUGBlGf4nnyOC2iJi/s4mAxoMY89xo0gP9Zy8Q=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'pm2rdC9bOz7DylP2Elq90ir4gKr8LnhvgLTaLxUGBlGf4nnyOC2iJi/s4mAxoMY89xo0gP9Zy8Q=',\n",
       "   'x-amz-request-id': '43D60D0F0A37B8B0',\n",
       "   'date': 'Mon, 14 Oct 2019 23:14:25 GMT',\n",
       "   'etag': '\"3c60825242904a59f7e803fe89f6c876\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"3c60825242904a59f7e803fe89f6c876\"'}"
      ]
     },
     "execution_count": 71,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201805/BTDC_CO_VARIABLES_201805.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201805.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 72,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': 'A400D8819957DD4D',\n",
       "  'HostId': 'LMWgXxkrDXOyNtcN8SccACSEUujjUBQzF/GccXI+S6fNnRwootg1bVZUjA43GOJTweSVC2Oypmo=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'LMWgXxkrDXOyNtcN8SccACSEUujjUBQzF/GccXI+S6fNnRwootg1bVZUjA43GOJTweSVC2Oypmo=',\n",
       "   'x-amz-request-id': 'A400D8819957DD4D',\n",
       "   'date': 'Mon, 14 Oct 2019 23:16:15 GMT',\n",
       "   'etag': '\"f91866b1b51be91b7c1f850a5bb01935\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"f91866b1b51be91b7c1f850a5bb01935\"'}"
      ]
     },
     "execution_count": 72,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201806/BTDC_CO_VARIABLES_201806.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201806.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 73,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': 'DB0A4AD339803B11',\n",
       "  'HostId': 'QrttEKtl7piof6jjr+VHJttJKSpj6LoOG8A847nO1s4x0J1SoS7i7QutbuRDSZ/cvrt59WuiFJs=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'QrttEKtl7piof6jjr+VHJttJKSpj6LoOG8A847nO1s4x0J1SoS7i7QutbuRDSZ/cvrt59WuiFJs=',\n",
       "   'x-amz-request-id': 'DB0A4AD339803B11',\n",
       "   'date': 'Mon, 14 Oct 2019 23:16:24 GMT',\n",
       "   'etag': '\"b0e24cf60017a08b0cdd21525f2506b3\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"b0e24cf60017a08b0cdd21525f2506b3\"'}"
      ]
     },
     "execution_count": 73,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201807/BTDC_CO_VARIABLES_201807.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201807.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 74,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': '1996733D33E5A9C1',\n",
       "  'HostId': 'KVkuouYm6JjT1xt+HBdzID416U+e6zRo7i3sYyb8ShdGrJEbs5ibiErP/e1D5W/JgHE1iVWjCxQ=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'KVkuouYm6JjT1xt+HBdzID416U+e6zRo7i3sYyb8ShdGrJEbs5ibiErP/e1D5W/JgHE1iVWjCxQ=',\n",
       "   'x-amz-request-id': '1996733D33E5A9C1',\n",
       "   'date': 'Mon, 14 Oct 2019 23:16:32 GMT',\n",
       "   'etag': '\"280021db6290fe85d983be5c68ac1660\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"280021db6290fe85d983be5c68ac1660\"'}"
      ]
     },
     "execution_count": 74,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201808/BTDC_CO_VARIABLES_201808.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201808.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 75,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': 'E96D36E2CBCB4541',\n",
       "  'HostId': 'iMdM3MHru+j/D5ww54j1S+HrG6BNtUiDB+4+tvWP5Svpg7RvV0PME8++XwVlMvYdFyRSm8F1nhc=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'iMdM3MHru+j/D5ww54j1S+HrG6BNtUiDB+4+tvWP5Svpg7RvV0PME8++XwVlMvYdFyRSm8F1nhc=',\n",
       "   'x-amz-request-id': 'E96D36E2CBCB4541',\n",
       "   'date': 'Mon, 14 Oct 2019 23:16:41 GMT',\n",
       "   'etag': '\"c9e46deb61a630af1bf879a996a8c567\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"c9e46deb61a630af1bf879a996a8c567\"'}"
      ]
     },
     "execution_count": 75,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201809/BTDC_CO_VARIABLES_201809.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201809.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 76,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': '8BD1660AE7960785',\n",
       "  'HostId': 'fhCoREIDqcnibBa9ohnCOlYag7wg/0kgbCx9UrRLMIa3TUrfmot/SpPg63J7weTb2tvpm3NM6WE=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'fhCoREIDqcnibBa9ohnCOlYag7wg/0kgbCx9UrRLMIa3TUrfmot/SpPg63J7weTb2tvpm3NM6WE=',\n",
       "   'x-amz-request-id': '8BD1660AE7960785',\n",
       "   'date': 'Mon, 14 Oct 2019 23:16:50 GMT',\n",
       "   'etag': '\"3bbd68576545c7ca9a5b550d7d54f536\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"3bbd68576545c7ca9a5b550d7d54f536\"'}"
      ]
     },
     "execution_count": 76,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201810/BTDC_CO_VARIABLES_201810.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201810.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 77,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': '7039C1D1008361DD',\n",
       "  'HostId': 'lE/Ps1VzCYxjPCrFxnyO6Wh3CvPBvT3FOjCdAexnpSgW8cJr/5oYcTIyGAGC44+Hyn3RtPSaRcU=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'lE/Ps1VzCYxjPCrFxnyO6Wh3CvPBvT3FOjCdAexnpSgW8cJr/5oYcTIyGAGC44+Hyn3RtPSaRcU=',\n",
       "   'x-amz-request-id': '7039C1D1008361DD',\n",
       "   'date': 'Mon, 14 Oct 2019 23:16:58 GMT',\n",
       "   'etag': '\"b9992776bc3fc5c29a4dfd146fd665fd\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"b9992776bc3fc5c29a4dfd146fd665fd\"'}"
      ]
     },
     "execution_count": 77,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201811/BTDC_CO_VARIABLES_201811.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201811.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 78,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': '4A5F13CFB675DF6A',\n",
       "  'HostId': '2R+mhoAYLeuyAkl1p5EWPQXupFpzQyy8r68S702Da4XQhdjEOBq096sLVJrJMtypdNBVQ44usFQ=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': '2R+mhoAYLeuyAkl1p5EWPQXupFpzQyy8r68S702Da4XQhdjEOBq096sLVJrJMtypdNBVQ44usFQ=',\n",
       "   'x-amz-request-id': '4A5F13CFB675DF6A',\n",
       "   'date': 'Mon, 14 Oct 2019 23:17:07 GMT',\n",
       "   'etag': '\"f5d3c84124130c989bee3e692e87c25a\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"f5d3c84124130c989bee3e692e87c25a\"'}"
      ]
     },
     "execution_count": 78,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201812/BTDC_CO_VARIABLES_201812.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201812.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 79,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': '6AE54F5043307920',\n",
       "  'HostId': 'YEXNvSy1lBPNfnVDcCa+5ifuhnk8fIfdZ3HqaAPgBxj7fxMuXReusINu/HxBvZAEnbCwNV9XVg4=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'YEXNvSy1lBPNfnVDcCa+5ifuhnk8fIfdZ3HqaAPgBxj7fxMuXReusINu/HxBvZAEnbCwNV9XVg4=',\n",
       "   'x-amz-request-id': '6AE54F5043307920',\n",
       "   'date': 'Mon, 14 Oct 2019 23:17:16 GMT',\n",
       "   'etag': '\"b47e9d99402c2d5146b620b522451fc9\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"b47e9d99402c2d5146b620b522451fc9\"'}"
      ]
     },
     "execution_count": 79,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201901/BTDC_CO_VARIABLES_201901.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201901.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 80,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': '30D5D866EFEFF941',\n",
       "  'HostId': 'dPZqYvj22qW62ONRWcMeSGQIdOhUS1jNNZzEA1xd0alL6mk3kK3xZtuW7rETphcGHdgqgNtqru0=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'dPZqYvj22qW62ONRWcMeSGQIdOhUS1jNNZzEA1xd0alL6mk3kK3xZtuW7rETphcGHdgqgNtqru0=',\n",
       "   'x-amz-request-id': '30D5D866EFEFF941',\n",
       "   'date': 'Mon, 14 Oct 2019 23:17:25 GMT',\n",
       "   'etag': '\"f0e03715042e703fc06e14e0dcf442fa\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"f0e03715042e703fc06e14e0dcf442fa\"'}"
      ]
     },
     "execution_count": 80,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201902/BTDC_CO_VARIABLES_201902.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201902.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 81,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': '608CEB69A468C7FC',\n",
       "  'HostId': 'WbfW0Hlervx9RFB/dql5ju8s5drgKPodR7FtAcZJnA2o27IG+s4O4ALt/vKNrAZQY37os+WaZu0=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'WbfW0Hlervx9RFB/dql5ju8s5drgKPodR7FtAcZJnA2o27IG+s4O4ALt/vKNrAZQY37os+WaZu0=',\n",
       "   'x-amz-request-id': '608CEB69A468C7FC',\n",
       "   'date': 'Mon, 14 Oct 2019 23:17:35 GMT',\n",
       "   'etag': '\"b194ad6a90e0fc239fb30ecb5481acf6\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"b194ad6a90e0fc239fb30ecb5481acf6\"'}"
      ]
     },
     "execution_count": 81,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201903/BTDC_CO_VARIABLES_201903.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201903.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 82,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': '9F68734321AD8061',\n",
       "  'HostId': 'uVOLT3PuqLS05MCTg25RWZL6GlUf4BZIdii+6sAxH70s+WIYZ3nrUX0XXfziBGrt72ZimRo9ENA=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'uVOLT3PuqLS05MCTg25RWZL6GlUf4BZIdii+6sAxH70s+WIYZ3nrUX0XXfziBGrt72ZimRo9ENA=',\n",
       "   'x-amz-request-id': '9F68734321AD8061',\n",
       "   'date': 'Mon, 14 Oct 2019 23:17:45 GMT',\n",
       "   'etag': '\"8baf11b9033a3b0620f85600e059604e\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"8baf11b9033a3b0620f85600e059604e\"'}"
      ]
     },
     "execution_count": 82,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201904/BTDC_CO_VARIABLES_201904.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201904.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 83,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': '6840FBDFD7AFE1A8',\n",
       "  'HostId': 'DtrFhdz5RKZhwuWrhVXG5kCIgpNxa8IKZdGs1e4cAO/q79etSr24T9SHpLjmjlIGUbm4abya5SY=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'DtrFhdz5RKZhwuWrhVXG5kCIgpNxa8IKZdGs1e4cAO/q79etSr24T9SHpLjmjlIGUbm4abya5SY=',\n",
       "   'x-amz-request-id': '6840FBDFD7AFE1A8',\n",
       "   'date': 'Mon, 14 Oct 2019 23:17:54 GMT',\n",
       "   'etag': '\"aca3372245a0582f36516901180ece43\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"aca3372245a0582f36516901180ece43\"'}"
      ]
     },
     "execution_count": 83,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201905/BTDC_CO_VARIABLES_201905.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201905.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 84,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': 'FE104285776EE2B2',\n",
       "  'HostId': 'AoFZm8Tk3vwrFkQeMvO/7sQfvEpaowVbk8ROo3ZnScS08l81qBJXTDJoBrZTas07Kk4nH7bsjs8=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'AoFZm8Tk3vwrFkQeMvO/7sQfvEpaowVbk8ROo3ZnScS08l81qBJXTDJoBrZTas07Kk4nH7bsjs8=',\n",
       "   'x-amz-request-id': 'FE104285776EE2B2',\n",
       "   'date': 'Mon, 14 Oct 2019 23:18:04 GMT',\n",
       "   'etag': '\"1115079d4067c84b976664f6db94b158\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"1115079d4067c84b976664f6db94b158\"'}"
      ]
     },
     "execution_count": 84,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201906/BTDC_CO_VARIABLES_201906.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201906.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 85,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': 'AFB16C205048680E',\n",
       "  'HostId': 'Tt6LRcj96ofWCAjnnUHjeBUAvU7JojeWjaExT6V54sLf934dLLBiiqBziMyMmZXGWrw92cbpwlg=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'Tt6LRcj96ofWCAjnnUHjeBUAvU7JojeWjaExT6V54sLf934dLLBiiqBziMyMmZXGWrw92cbpwlg=',\n",
       "   'x-amz-request-id': 'AFB16C205048680E',\n",
       "   'date': 'Mon, 14 Oct 2019 23:18:14 GMT',\n",
       "   'etag': '\"12e2ae4e4e5948586079a5080bf1134d\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"12e2ae4e4e5948586079a5080bf1134d\"'}"
      ]
     },
     "execution_count": 85,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201907/BTDC_CO_VARIABLES_201907.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201907.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 86,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': 'D72CB732F1BF4047',\n",
       "  'HostId': 'UB10k+TQLJbs0W8X0fN8WljWir6eq39wdixCseXdVX6iSyOHgp6XV5kOrEOg564vCC6eSI8YQzA=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'UB10k+TQLJbs0W8X0fN8WljWir6eq39wdixCseXdVX6iSyOHgp6XV5kOrEOg564vCC6eSI8YQzA=',\n",
       "   'x-amz-request-id': 'D72CB732F1BF4047',\n",
       "   'date': 'Mon, 14 Oct 2019 23:18:25 GMT',\n",
       "   'etag': '\"65ec066a329e53f6247cb22c2f7c851d\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"65ec066a329e53f6247cb22c2f7c851d\"'}"
      ]
     },
     "execution_count": 86,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201908/BTDC_CO_VARIABLES_201908.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201908.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 87,
   "metadata": {},
   "outputs": [
    {
     "data": {
      "text/plain": [
       "{'ResponseMetadata': {'RequestId': 'B9C2B9EC8FA0056D',\n",
       "  'HostId': 'DRHV4A2pTQlospFIpDoFQuwXzO0o/v+PXFWDOaKknNnVaZGlS3Pr/SbvBgaqkYacrPNbl/07OK4=',\n",
       "  'HTTPStatusCode': 200,\n",
       "  'HTTPHeaders': {'x-amz-id-2': 'DRHV4A2pTQlospFIpDoFQuwXzO0o/v+PXFWDOaKknNnVaZGlS3Pr/SbvBgaqkYacrPNbl/07OK4=',\n",
       "   'x-amz-request-id': 'B9C2B9EC8FA0056D',\n",
       "   'date': 'Mon, 14 Oct 2019 23:18:37 GMT',\n",
       "   'etag': '\"43e7d26281e9b4994a1cb616ac8b0867\"',\n",
       "   'content-length': '0',\n",
       "   'server': 'AmazonS3'},\n",
       "  'RetryAttempts': 0},\n",
       " 'ETag': '\"43e7d26281e9b4994a1cb616ac8b0867\"'}"
      ]
     },
     "execution_count": 87,
     "metadata": {},
     "output_type": "execute_result"
    }
   ],
   "source": [
    "# obj_key =  \"datalake/data/InteligenciaRiesgos/M&M/BTDC/VARIABLES INTERNAS/201909/BTDC_CO_VARIABLES_201909.csv\" \n",
    "# f_str = io.StringIO()\n",
    "# BTDC_CO_VARIABLES_201909.to_csv(f_str, index=False)\n",
    "# s3_bucket_resource.Object(obj_key).put(Body=f_str.getvalue())"
   ]
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "conda_python3",
   "language": "python",
   "name": "conda_python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.6.5"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 2
}
