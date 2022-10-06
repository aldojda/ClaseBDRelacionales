# PROYECTO CREADO EN MARIA DB
# CREATE DATABASE PROYECTOBD;

CREATE TABLE infoClients (
id_cliente INT,
name_client  VARCHAR (20),
dr  VARCHAR (20),
gz  VARCHAR (10),
gec  VARCHAR (10),
condicion  INT,
postal_code INT,
date_start date, 
situation VARCHAR(10),
channel  VARCHAR (10)
);

CREATE TABLE dailySales (
id_pedido INT AUTO_INCREMENT KEY,
id_product  INT,
id_cliente INT, 
date_purchase DATE,
volumne FLOAT,
income FLOAT,
revenue FLOAT,
ayudas FLOAT,
cajas INT
);

CREATE TABLE coldCapacity (
id_fridge INT,
cold_capacity INT,
id_cliente INT, 
date_in DATE,
eq_status VARCHAR(15)
);

CREATE TABLE catalogSKU (
 id_product  INT,
 description VARCHAR(25),
 line_extension VARCHAR(20),
 bottle_type VARCHAR(20),
 returnability VARCHAR(10),
 diamond_price VARCHAR(20),
 brand VARCHAR(20),
 vol_ml FLOAT,
 pack_size VARCHAR(20),
 pack_type VARCHAR(20)
  );