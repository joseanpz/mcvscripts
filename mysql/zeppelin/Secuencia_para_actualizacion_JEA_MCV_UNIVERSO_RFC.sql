
1.-El primer paso es  consultar la fecha de última actualización de información contenida en las tablas:  
		•	banregio_boi.colocacion_mensual, 
		•	dbriskdatamart.tbl_CarteraCrediticia,  
		•	dbriskdatamart.tbl_movimientolineas 
		•	mzm_mcv_universo_modelado_201905

2.-El  segundo paso es  actualizar las  tablas  RSS_MCV_COLOCACION usando la tabla actual  
   banregio_boi.colocacion_mensual  y en el caso de  RSS_MCV_CARTERA_CREDITICIA_LINEA usar la tabla  
   actualizada dbriskdatamart.tbl_CarteraCrediticia.


3.- EL tercer  paso es  actualizar tabla  RSS_MCV_COLOCACION_PEQUE  que se genera de RSS_MCV_COLOCACION.


4.-El cuarto paso es  actualizar tabla JEA_MCV_UNIVERSO_RFC_LLAVES que se genera de RSS_MCV_COLOCACION_PEQUE   
   y  RSS_MCV_CARTERA_CREDITICIA_LINEA.


5.-El quinto paso se  actualiza tabla JEA_MCV_UNIVERSO_LLAVES que se genera de las tablas  RSS_MCV_CARTERA_CREDITICIA_LINEA  
   y  JEA_MCV_UNIVERSO_RFC_LLAVES.


6. El sexto paso se actualiza tabla RSS_MCV_CATALOGO_LIN_NAC_VENC que se genera de las tablas RSS_MCV_CARTERA_CREDITICIA_LINEA 
   y JEA_MCV_UNIVERSO_LLAVES.


7.-EL séptimo paso se  actualiza tabla RSS_MCV_CATALOGO_LIN_REEST usando la tabla actual  dbriskdatamart.tbl_movimientolineas.


8.- El octavo paso es actualizar tabla RSS_MCV_PREUNIVERSO que se genera RSS_MCV_CATALOGO_LIN_REEST, RSS_MCV_CATALOGO_LIN_NAC_VENC , 
    JEA_MCV_UNIVERSO_LLAVES y  RSS_MCV_CARTERA_CREDITICIA_LINEA.


9.-El noveno paso es actualizar las  tablas  JEA_MCV_UNIVERSO_CVLABEL y JEA_MCV_UNIVERSO_DALABEL que se generan con JEA_MCV_UNIVERSO_LLAVES  y RSS_MCV_PREUNIVERSO.


10.-Decimo paso será actualizar tabla JEA_MCV_UNIVERSO con la información actual en mzm_mcv_universo_modelado_201905 además se genera con las tablas JEA_MCV_UNIVERSO_CVLABEL, JEA_MCV_UNIVERSO_DALABEL y RSS_MCV_PREUNIVERSO.


11. Por último paso se actualiza tabla JEA_MCV_UNIVERSO_RFC  que se genera de JEA_MCV_UNIVERSO. 


