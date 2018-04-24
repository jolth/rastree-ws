/*

Create Database:
 $ createdb --locale=C.UTF-8 --owner=rastree -W rastree-ws

*/

CREATE TABLE response_validate (
  id VARCHAR (2) PRIMARY KEY,
  description VARCHAR (50) NOT NULL
);

INSERT INTO response_validate VALUES ('00', 'CONSULTA OK');
INSERT INTO response_validate VALUES ('01', 'PROVEEDOR NO COINCIDE');
INSERT INTO response_validate VALUES ('02', 'SERIAL DE LA MAQUINA NO COINCIDE');
INSERT INTO response_validate VALUES ('03', 'MOTOR DE LA MAQUINA NO COINCIDE');
INSERT INTO response_validate VALUES ('04', 'CHASIS NO COINCIDE');
INSERT INTO response_validate VALUES ('05', 'IMEI DEL DISPOSITIVO NO COINCIDE');
INSERT INTO response_validate VALUES ('06', 'SERIE DEL DISPOSITIVO NO COINCIDE *');
INSERT INTO response_validate VALUES ('07', 'IMEI NO REGISTRADO');
INSERT INTO response_validate VALUES ('08', 'MAQUINA NO REGISTRADA');
INSERT INTO response_validate VALUES ('99', 'NO HAY DATOS SUFICIENTES PARA PROCESAR');  

CREATE TABLE numbers_valid (
  number_valid VARCHAR (50) PRIMARY KEY,  
  datetime_of_entry TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP, 
  used BOOLEAN DEFAULT 'f',
  datetime_of_used TIMESTAMP WITH TIME ZONE,
  active BOOLEAN DEFAULT 't' /* if is active or not */
);

/* **************************************************************************************************** */
