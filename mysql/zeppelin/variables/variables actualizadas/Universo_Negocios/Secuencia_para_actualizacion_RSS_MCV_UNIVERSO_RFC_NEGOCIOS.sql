
1.-El primer paso es  consultar la fecha de última actualización de información contenida en las tablas:  
		•	DBMYMWORK.MCV_LGG_SEGMENTO_CLIENTE
		•	dbriskdatamart.tbl_CarteraCrediticia,  
		•	dbriskdatamart.tbl_movimientolineas 
		•	mzm_mcv_universo_modelado_201906

2.-El segundo paso es actulizar la tabla RSS_MCV_CARTERA_CREDITICIA_LINEA que se crea a partir de  dbriskdatamart.tbl_CarteraCrediticia.



3.-El  tercer  paso es  actualizar  RSS_MCV_SEGMENTO_NEGOCIOS   que se genera  con las tablas 
   DBMYMWORK.MCV_LGG_SEGMENTO_CLIENTE  ,RSS_MCV_CARTERA_CREDITICIA_LINEA  y dbriskdatamart.MZM_MCV_UNIVERSO_MODELADO_201906.


4.-El cuarto paso es  actualizar tabla RSS_MCV_UNIVERSO_RFC_LLAVES_NEGOCIOS que se genera RSS_MCV_SEGMENTO_NEGOCIOS   
   y  RSS_MCV_CARTERA_CREDITICIA_LINEA.


5.-El quinto paso se  actualiza tabla RSS_MCV_UNIVERSO_LLAVES_NEGOCIOS que se genera de las tablas  RSS_MCV_CARTERA_CREDITICIA_LINEA  
   y  RSS_MCV_UNIVERSO_RFC_LLAVES_NEGOCIOS.


6. El sexto paso se actualiza tabla RSS_MCV_CATALOGO_LIN_NAC_VENC_NEGOCIOS que se genera de las tablas RSS_MCV_CARTERA_CREDITICIA_LINEA 
   y RSS_MCV_UNIVERSO_LLAVES_NEGOCIOS.


7.-EL séptimo paso se  actualiza tabla RSS_MCV_CATALOGO_LIN_REEST usando la tabla actual  dbriskdatamart.tbl_movimientolineas.


8.- El octavo paso es actualizar tabla RSS_MCV_PREUNIVERSO_NEGOCIOS que se genera RSS_MCV_CATALOGO_LIN_REEST, RSS_MCV_CATALOGO_LIN_NAC_VENC_NEGOCIOS , 
    RSS_MCV_UNIVERSO_LLAVES_NEGOCIOS y  RSS_MCV_CARTERA_CREDITICIA_LINEA.


9.-El noveno paso es actualizar las  tablas  JEA_MCV_UNIVERSO_CVLABEL_NEGOCIOS y RSS_MCV_UNIVERSO_DALABEL_NEGOCIOS que se generan con RSS_MCV_UNIVERSO_LLAVES_NEGOCIOS  y RSS_MCV_PREUNIVERSO_NEGOCIOS.


10.-Decimo paso será actualizar tabla RSS_MCV_UNIVERSO_NEGOCIOS con la información actual en mzm_mcv_universo_modelado_201906 además se genera con las tablas JEA_MCV_UNIVERSO_CVLABEL_NEGOCIOS,
    RSS_MCV_UNIVERSO_DALABEL_NEGOCIOS y RSS_MCV_PREUNIVERSO_NEGOCIOS.


11. Por último paso se actualiza tabla RSS_MCV_UNIVERSO_RFC_NEGOCIOS  que se genera de RSS_MCV_UNIVERSO_NEGOCIOS. 
