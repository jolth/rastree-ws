--
-- Copyright 2018 (c) by Jorge A. Toro <jolthgs@gmail.com> <jorge.toro@devmicrosystem.com>
--
-- Create Database:
--  $ createdb --locale=C.UTF-8 --owner=rastree -W rastree-ws
--  $ psql -d rastree-ws < tables.sql


CREATE TABLE response_validate (
  id VARCHAR (2) NOT NULL PRIMARY KEY,
  description VARCHAR (50) NOT NULL
);
INSERT INTO response_validate
VALUES 
 ('00', 'CONSULTA OK'),
 ('01', 'PROVEEDOR NO COINCIDE'),
 ('02', 'SERIAL DE LA MAQUINA NO COINCIDE'),
 ('03', 'MOTOR DE LA MAQUINA NO COINCIDE'),
 ('04', 'CHASIS NO COINCIDE'),
 ('05', 'IMEI DEL DISPOSITIVO NO COINCIDE'),
 ('06', 'SERIE DEL DISPOSITIVO NO COINCIDE *'),
 ('07', 'IMEI NO REGISTRADO'),
 ('08', 'MAQUINA NO REGISTRADA'),
 ('99', 'NO HAY DATOS SUFICIENTES PARA PROCESAR');  

CREATE TABLE numbers_valid (
  id SERIAL,
  number_valid VARCHAR (50) PRIMARY KEY,  
  datetime_of_entry TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP, 
  used BOOLEAN DEFAULT 'f',
  datetime_of_used TIMESTAMP WITH TIME ZONE,
  active BOOLEAN DEFAULT 't', /* if is active or not */
  token VARCHAR(10)
);

-- ****************************************************************************************************
