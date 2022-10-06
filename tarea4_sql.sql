# PROYECTO CREADO EN MARIADB


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




INSERT INTO infoClients (id_cliente, name_client,dr, gz, gec,condicion, postal_code, date_start, situation, channel )

VALUES(0001,'cliente1','DR NOROESTE','GZ - BC','Titanium',51,2022,'2020-03-01','baja','Off Trade'),
      (0002,'cliente2','DR NOROESTE','GZ - BC','Platino',52,2022,'2020-03-01','activo','Off Trade'),
      (0003,'cliente3','DR NOROESTE','GZ - BC','Titanium',51,2022,'2020-03-01','activo','Off Trade'),
      (0004, 'cliente4','DR NOROESTE','GZ - BC','Titanium',51,2022,'2020-03-01','activo','Off Trade'),
      (0005, 'cliente5','DR NOROESTE','GZ - BC','Titanium',51,2022,'2019-04-01','activo','Off Trade'),
      (0006, 'cliente6','DR NOROESTE','GZ - BC','Oro',51,2022,'2020-03-01','activo','Off Trade'),
      (0007,'cliente7','DR NOROESTE','GZ - BC','Titanium',52,2022,'2020-03-01','activo','Off Trade'),
      (0008,'cliente8','DR NOROESTE','GZ - BC','Titanium',52,2022,'2020-03-01','activo','Off Trade'),
      (0009,'cliente9','DR NOROESTE','GZ - BC','Titanium',52,2022,'2020-03-01','activo','Off Trade'),
      (0010,'cliente10','DR NOROESTE','GZ - BC','Titanium',52,2022,'2018-03-01','activo','Off Trade'),
      (0011,'cliente11','DR NOROESTE','GZ - BC','Titanium',52,2022,'2020-03-01','activo','Off Trade'),
      (0012,'cliente12','DR NOROESTE','GZ - BC','Platino',52,2022,'2020-03-01','activo','Off Trade'),
      (0013,'cliente13','DR NOROESTE','GZ - BC','Titanium',51,2022,'2020-03-01','activo','Off Trade'),
      (0014,'cliente14','DR NOROESTE','GZ - BC','Platino',51,2022,'2017-03-01','activo','Off Trade'),
      (0015,'cliente15','DR NOROESTE','GZ - BC','Platino',52,2022,'2020-03-01','activo','Off Trade'),
      (0016,'cliente16','DR NOROESTE','GZ - BC','Oro',51,2022,'2020-03-01','activo','Off Trade'),
      (0017,'cliente17','DR NOROESTE','GZ - BC','Platino',52,2022,'2020-03-01','activo','Off Trade'),
      (0018,'cliente18','DR NOROESTE','GZ - BC','Platino',52,2022,'2020-03-01','activo','Off Trade'),
      (0019,'cliente19','DR NOROESTE','GZ - BC','Platino',52,2022,'2020-03-01','activo','Off Trade'),
      (0020,'cliente20','DR NOROESTE','GZ - BC','Platino',52,2022,'2020-03-01','activo','Off Trade');


CREATE TABLE dailySales (
id_pedido INT AUTO_INCREMENT KEY,
id_product  INT,
id_cliente INT, 
date_purchase DATE,
volume FLOAT,
income FLOAT,
revenue FLOAT,
ayudas FLOAT,
cajas INT
);


INSERT INTO dailySales(id_pedido, id_product, id_cliente, date_purchase, volume, income, ayudas, cajas)
VALUES  (1  ,1  ,1 ,'2022-01-01' ,0.2 ,2300 ,10  ,1),
        (2 ,2  ,1 ,'2022-01-01' ,0.3 ,2300 ,10  ,1),
        (3 ,3  ,1 ,'2022-01-01' ,0.3 ,2500 ,10  ,1),
        (4 ,4  ,1 ,'2022-01-01' ,0.3 ,2600 ,10  ,1),
        (5 ,5  ,1 ,'2022-01-01' ,0.3 ,2300 ,10  ,1),
        (6, 1 ,2 ,'2022-01-01' ,0.3 ,2300 ,10  ,1),
        (7 ,2 ,2 ,'2022-01-01' ,0.3 ,2900 ,10  ,1),
        (8 ,3 ,2 ,'2022-01-01' ,0.3 ,2100 ,10  ,1),
        (9 ,4 ,2 ,'2022-01-01' ,0.3 ,2300 ,10  ,1),
        (10 ,5 ,2 ,'2022-01-01' ,0.3 ,2000 ,10  ,1),
        (11,6 ,2 ,'2022-01-01' ,0.3 ,2300 ,10  ,1),
        (12  ,1 ,3 ,'2022-01-01' ,0.3 ,2300 ,10 ,1),
        (13,2 ,3 ,'2022-01-01' ,0.3 ,2800 ,10  ,1),
         (14 ,3 ,2 ,'2022-01-01' ,0.3 ,2100 ,10  ,1),
        (15 ,4 ,2 ,'2022-01-01' ,0.3 ,2300 ,10  ,1),
        (16 ,5 ,2 ,'2022-01-01' ,0.3 ,2000 ,10  ,1),
        (17,6 ,2 ,'2022-01-01' ,0.3 ,2300 ,10  ,1),
        (18  ,1 ,3 ,'2022-01-01' ,0.3 ,2300 ,10 ,1),
        (19,2 ,3 ,'2022-01-01' ,0.3 ,2800 ,10  ,1),
        (20 ,3 ,4 ,'2022-01-01' ,0.3 ,2300 ,10  ,1);



CREATE TABLE coldCapacity (
id_fridge INT,
cold_capacity INT,
id_cliente INT, 
date_in DATE,
eq_status VARCHAR(15)
);

INSERT INTO coldCapacity(id_fridge, cold_capacity, id_cliente, date_in,eq_status)
 VALUES (1,320,1,'2022-01-01','APEGO'),
        (2,320,2,'2022-01-01','SUB EQUIPADO'),
        (3,320,3,'2022-01-01','SOBRE EQUIPADO'),
        (4,320,4,'2022-01-01','APEGO'),
        (5,320,5,'2022-01-01','SUB EQUIPADO'),
        (6,320,6,'2022-01-01','SOBRE EQUIPADO'),
        (7,320,7,'2022-01-01','APEGO'),
        (8,320,8,'2022-01-01','SUB EQUIPADO'),
        (9,550,9,'2022-01-01','SOBRE EQUIPADO'),
        (10,550,10,'2022-01-01','APEGO'),
        (11,550,11,'2022-01-01','SUB EQUIPADO'),
        (12,550,12,'2022-01-01','SOBRE EQUIPADO'),
        (13,550,13,'2022-01-01','APEGO'),
        (14,550,14,'2022-01-01','SUB EQUIPADO'),
        (15,550,15,'2022-01-01','SOBRE EQUIPADO'),
        (16,550,16,'2022-01-01','APEGO'),
        (17,550,17,'2022-01-01','SUB EQUIPADO'),
        (18,840,18,'2022-01-01','SOBRE EQUIPADO'),
        (19,840,19,'2022-01-01','APEGO'),
        (20,840,20,'2022-01-01','SUB EQUIPADO');



CREATE TABLE catalogSKU (
 id_product  INT,
 product_desc VARCHAR(25),
 line_extension VARCHAR(40),
 bottle_type VARCHAR(20),
 returnability VARCHAR(10),
 price_segment VARCHAR(20),
 brand VARCHAR(20),
 vol_ml FLOAT,
 pack_size VARCHAR(20),
 beer_type VARCHAR(20)
  );



 INSERT INTO catalogSKU(id_product, product_desc, line_extension, bottle_type, returnability, price_segment, brand, vol_ml, pack_size, beer_type)
 VALUES     (1, 'TECATE 6X2 16 0Z CAN NR' , 'TECATE REGULAR', 'CAN', 'NR', 'MAINSTREM', 'TECATE', 475.00, '6 PK', 'BEER' ),
            (2, 'TECATE LIGHT 6X2 16 0Z CAN NR' , 'TECATE LIGHT', 'CAN', 'NR', 'MAINSTREM', 'TECATE', 475.00, '6 PK', 'LIGHT' ),
            (3, 'TECATE 6X2 12 0Z CAN NR' , 'TECATE REGULAR', 'CAN', 'NR', 'MAINSTREM', 'TECATE', 355.00, '6 PK', 'BEER' ),
            (4, 'TECATE LIGHT 12X1 12 0Z CAN NR' , 'TECATE LIGHT', 'CAN', 'NR', 'MAINSTREM', 'TECATE', 355.00, '12 PK', 'LIGHT' ),
            (5, 'AMSTEL ULTRA 12X1 12 0Z CAN NR' , 'AMSTEL ULTRA', 'CAN', 'NR', 'MAINSTREM', 'AMSTEL', 355.00, '12 PK', 'ULTRA' ),
            (6, 'AMSTEL ULTRA 12X1 12 0Z BOT RET' , 'AMSTEL ULTRA', 'BOT', 'RET', 'MAINSTREM', 'AMSTEL', 355.00, '12 PK', 'ULTRA' ),
            (7, 'AMSTEL ULTRA 12X2 12 0Z BOT RET' , 'AMSTEL ULTRA', 'BOT', 'RET', 'MAINSTREM', 'AMSTEL', 355.00, '24 PK', 'ULTRA' ),
            (8, 'CARTA BLANCA 6X2 12 0Z CAN RET' , 'CARTA BLANCA', 'BOT', 'RET', 'MAINSTREM', 'CARTA BLANCA', 355.00, '12 PK', 'BEER' ),
            (9, 'CARTA BLANCA CAGUAMITA 6X1 12 0Z BOT RET' , 'CARTA BLANCA CAGUAMITA', 'BOT', 'RET', 'MAINSTREM', 'CARTA BLANCA', 355.00, '6 PK', 'BEER' ),
            (10, 'TECATE 6X2 16 0Z CAN NR' , 'TECATE REGULAR', 'CAN', 'NR', 'MAINSTREM', 'TECATE', 475.00, '6 PK', 'BEER' ),
            (11, 'TECATE LIGHT 6X2 16 0Z CAN NR' , 'TECATE LIGHT', 'CAN', 'NR', 'MAINSTREM', 'TECATE', 475.00, '6 PK', 'LIGHT' ),
            (12, 'TECATE 6X2 12 0Z CAN NR' , 'TECATE REGULAR', 'CAN', 'NR', 'MAINSTREM', 'TECATE', 355.00, '6 PK', 'BEER' ),
            (13, 'TECATE LIGHT 12X1 12 0Z CAN NR' , 'TECATE LIGHT', 'CAN', 'NR', 'MAINSTREM', 'TECATE', 355.00, '12 PK', 'LIGHT' ),
            (14, 'AMSTEL ULTRA 12X1 12 0Z CAN NR' , 'AMSTEL ULTRA', 'CAN', 'NR', 'MAINSTREM', 'AMSTEL', 355.00, '12 PK', 'ULTRA' ),
            (15, 'AMSTEL ULTRA 12X1 12 0Z BOT RET' , 'AMSTEL ULTRA', 'BOT', 'RET', 'MAINSTREM', 'AMSTEL', 355.00, '12 PK', 'ULTRA' ),
            (16, 'AMSTEL ULTRA 12X2 12 0Z BOT RET' , 'AMSTEL ULTRA', 'BOT', 'RET', 'MAINSTREM', 'AMSTEL', 355.00, '24 PK', 'ULTRA' ),
            (17, 'CARTA BLANCA 6X2 12 0Z CAN RET' , 'CARTA BLANCA', 'BOT', 'RET', 'MAINSTREM', 'CARTA BLANCA', 355.00, '12 PK', 'BEER' ),
            (18, 'CARTA BLANCA CAGUAMITA 6X1 12 0Z BOT RET' , 'CARTA BLANCA CAGUAMITA', 'BOT', 'RET', 'MAINSTREM', 'CARTA BLANCA', 355.00, '6 PK', 'BEER' ),
