# Tarea 1-1 : Investigar SBGB

 ## Qué es un sistema gestor de Bases de datos (SGBD)?
Un sistema gestor de bases de datos se podria definir como un sistema donde se almacenan datos, donde los usuarios del sitema pueden generar distintos tipos de operaciones tanto de manipulación como de gestión. SGBD se categoriza deacuerdo a su estructura o tipo, siendo uno de los principales del tipo relacional.

## Que tipo de estructuras existen en una Base de datos Relacional?
las bases de datos relacionales incluyen las siguientes estructuras: 

* Base de datos 
Una base de datos es una forma de agrupar de manera lógica los datos, contiene un conjunto de tablas estructuradas por indices y columnas donde los renglones no tienen un orden definido, de tal manera que si se necesita consultar la información una buena practica es ordenarla, por otro lado el orden de las columnas depende de cuando se crearon por el administrador de la base de datos. En la intersección de cada indice y columna encontramos el valor asociado a esta posición. Una tabla se puede nombrar.

## que tipos de tablas existen?

Existen 3 tipos de tablas las cuales son enlistadas a continuación:

* Tablas base: al momento de crerse se almacena y permite consistencia en la información
* Tablas Temporales: se almacenan los resultados de las consultas intermedias 
* Tabla resultado: se despliega cuando se realiza una consulta (querry) de una tabla

## Estructura de una tabla

<table>
    <tr>
        <td>Cliente</td>
        <td>Venta</td>
        <td>Fecha</td>
    </tr>
    <tr>
        <td>01</td>
        <td>100</td>
        <td>10-02-22</td>
    </tr>
    <tr>
        <td>02</td>
        <td>120</td>
        <td>11-02-22</td>
    </tr>
    <tr>
        <td>03</td>
        <td>20</td>
        <td>12-02-22</td>
    </tr>
   
</table>

En la tabla anterior se utilizan: 

* columnas: las columas son ['Ciente', 'Venta', 'Fecha'] siendo toda la data contenida en las columnas del mismo tipo (int, varchart, float)
* renglones: cada renglón contiene datos de un unico registo
* valores: la intersección entre renglon y columna contiene el valor asociado.
* indices: un indice es un conjunto ordenado de apuntadores de renglones a una tabla, se puede usar para dos propositos (mejorar el rendimiento y para identificar datos unicos).
* llaves: puede ser una o más columnas que se identifican al momento de crear la tabla.
* llave primaria: cada tabla contiene una y sólo una llave primaria la cual permite definir la entidad, siendo requerido que tenga un valor no nulo
* llave única: una llave primaria por definición deberia de ser única, sin embargo es posible tener mas de una llave unica en una tabla.
* llave externa: permite relacionar una llave padre (llave primaria) con otra tabla, siendo que en cada tabla pueden existir multiples llaves externas.
 
 Algunos ejempos de Sistema gestor de Bases de datos son :

* Oracle
* DB2
* PostgreSQL
* MySQL
* MS SQL Server
* MariaDB

Para el proyecto se trabajará con MS SQL Server debido a que es la herramienta más usada en el departamento donde trabajo.




##  Describir una base de datos y sus Relaciones de manera no estructurada


tabla 1: Maestro Clientes
1. id_cliente AS int
2. dr as varchart(25)
3. gz as varchart(25)
4. Condicion as int
5. CP as int
6. gec as varchart(25)
7. Fe_alta as datetime 
8. Situacion as varchart(10)
9. canal as varchart(10)

tabla 2: Volumen

1. id_cliente as int
3. producto as int
3. month as int 
2. volumen as varchart(10)

tabla 3 capacidad Fria

1. id_cliente as int
2. cap_fri as int
3. status_cap_fri as varchart(10)

tabla 4:  catalogo productos
1. sku as int
2. line extension as varchart(15)
3. Marca as varchart(15)
4. tipo_liquido as varchart(15)
5. diamante_precios as varchart(15)
6. pack_type as varchart(15)
7. vol_ml as varchart(15)



