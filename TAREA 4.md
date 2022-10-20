# Realizar consultas en SQL

## conteo de Frecuencias
De la base de datos dailysales queremos contar cuantos pedidos se hicieron el día primero de enero del 2022 para entender cual es el sku que ha tenido mas demanda, en SQL podemos realizar la consulta de la siguiente manera:

``` sql
# Frequency Count by SKUs
SELECT SKU, COUNT(*) AS freq
FROM dailysales  
WHERE Dia = 20220101
GROUP BY  SKU
ORDER BY  freq DESC;
````
obteniendo el siguiente Resultado.
SKU|Count
------|--
144105|69
143755|64
144144|63
139988|60
139035|57
145164|53
141866|53
143754|52

## MAX 
Enseguida se busca entender cual producto tiene mayor participación en volumen por lo cual utilizaremos el siquiente Querry en SQL:


``` sql
SELECT SKU, MAX(SUM_HL) FROM (
    SELECT SKU, sum(Htls) AS SUM_Hl
    FROM dailysales  
    WHERE Dia = 20220101
    GROUP BY  SKU) SUM_HL ;
````
obteniendo el siguiente Resultado:

SKU    | MAX(Htls)
-------|------------
140117|16.11255976743996

## MODE

Otro tipo de Análisis muy utilizado es obtener la Moda, la cual consiste en ver cual SKU es el más pedido, para esto en mi caso utilize un conteo de frecuencias y enseguida filtramos los datos para limitarlo sólo a 1 elemento al no definir el periodo de tiempo me traerá el SKU más Solicitado en toda mi base de datos:

``` sql
SELECT SKU, occurs
FROM (SELECT SKU,count(*) as occurs
      FROM dailysales
      GROUP BY `SKU`
      ORDER BY  occurs DESC
      LIMIT 1
     ) T2;
````
y obtenemos el siguiente resultado

SKU    | occurs
-------|------------
143755 | 82


### Curtiles

Algunas veces es indispensable saber los cuartiles, para esto se generaron algunas funciones de apoyo para poder calcular el cuartil 1, 2 y 3.


``` sql
#Quartile Calculations
SET @number_of_rows := (SELECT COUNT(*) FROM dailysales);
SET @quartile := (ROUND(@number_of_rows*0.25));
SET @quartile50 := (ROUND(@number_of_rows*0.50));
SET @sql_q1 := (CONCAT('(SELECT "Q1" AS quartile_name , FGP FROM dailysales ORDER BY FGP DESC LIMIT 1 OFFSET ', @quartile,')'));
SET @sql_q2 := (CONCAT('(SELECT "Q2" AS quartile_name , FGP FROM dailysales ORDER BY FGP DESC LIMIT 1 OFFSET ', @quartile50,')'));
SET @sql_q3 := (CONCAT('( SELECT "Q3" AS quartile_name , FGP FROM dailysales ORDER BY FGP ASC LIMIT 1 OFFSET ', @quartile,');'));
SET @sql := (CONCAT(@sql_q1,' UNION ',@sql_q2, ' UNION ',@sql_q3));
PREPARE stmt1 FROM @sql;
EXECUTE stmt1;
````

obteniendo el siguiente resultado:


quartile_name| FGP
------|----------
Q1|-0.0784
Q2|-65.8014
Q3|-333.917


## Conclusión:

Con el siguiente ejercicio me di cuenta de las muchas formas en que se pueden realizar consultas, además de agrupaciones y algunas definiciones de functiones sin embargo lo más complicado hasta el momento ha sido el entender las consultas anidadas para poder generar resultados a partir de tablas temporales.
