
1.-El primer paso es  consultar la fecha de última actualización de información contenida en las tablas:  
		•	dbriskdatamart.tbl_CarteraCrediticia para el segmento Negocios,  
		•	dbriskdatamart.tbl_movimientolineas 
		•	mzm_mcv_universo_modelado_201909

2.-El segundo paso es actulizar la tabla RSS_MCV_CARTERA_CREDITICIA_LINEA_A que se crea a partir de  dbriskdatamart.tbl_CarteraCrediticia.



3.-El  tercer  paso es  actualizar  RSS_MCV_SEGMENTO_NEGOCIOSA   que se genera  con las tablas 
   DBMYMWORK.MCV_LGG_SEGMENTO_CLIENTE  ,RSS_MCV_CARTERA_CREDITICIA_LINEA_A  y dbriskdatamart.MZM_MCV_UNIVERSO_MODELADO_201909.


4.-El cuarto paso es  actualizar tabla RSS_MCV_UNIVERSO_RFC_LLAVES_NEGOCIOSA que se genera RSS_MCV_SEGMENTO_NEGOCIOSA   
   y  RSS_MCV_CARTERA_CREDITICIA_LINEA_A.


5.-El quinto paso se  actualiza tabla RSS_MCV_UNIVERSO_LLAVES_NEGOCIOSA que se genera de las tablas  RSS_MCV_CARTERA_CREDITICIA_LINEA_A  
   y  RSS_MCV_UNIVERSO_RFC_LLAVES_NEGOCIOSA.


6. El sexto paso se actualiza tabla RSS_MCV_CATALOGO_LIN_NAC_VENC_NEGOCIOSA que se genera de las tablas RSS_MCV_CARTERA_CREDITICIA_LINEA_A 
   y RSS_MCV_UNIVERSO_LLAVES_NEGOCIOSA.


7.-EL séptimo paso se  actualiza tabla RSS_MCV_CATALOGO_LIN_REESTA usando la tabla actual  dbriskdatamart.tbl_movimientolineas.


8.- El octavo paso es actualizar tabla RSS_MCV_PREUNIVERSO_NEGOCIOSA que se genera RSS_MCV_CATALOGO_LIN_REESTA, RSS_MCV_CATALOGO_LIN_NAC_VENC_NEGOCIOSA , 
    RSS_MCV_UNIVERSO_LLAVES_NEGOCIOSA y  RSS_MCV_CARTERA_CREDITICIA_LINEA_A.


9.-El noveno paso es actualizar las  tablas  JEA_MCV_UNIVERSO_CVLABEL_NEGOCIOSA y RSS_MCV_UNIVERSO_DALABEL_NEGOCIOSA que se generan con RSS_MCV_UNIVERSO_LLAVES_NEGOCIOSA  y RSS_MCV_PREUNIVERSO_NEGOCIOSA.


10.-Decimo paso será actualizar tabla RSS_MCV_UNIVERSO_NEGOCIOSA con la información actual en mzm_mcv_universo_modelado_201909 además se genera con las tablas JEA_MCV_UNIVERSO_CVLABEL_NEGOCIOSA,
    RSS_MCV_UNIVERSO_DALABEL_NEGOCIOSA y RSS_MCV_PREUNIVERSO_NEGOCIOSA.


11. Por último paso se actualiza tabla RSS_MCV_UNIVERSO_RFC_NEGOCIOSA  que se genera de RSS_MCV_UNIVERSO_NEGOCIOSA. 
