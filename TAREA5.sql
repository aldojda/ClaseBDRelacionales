%sql
DROP VIEW IF EXISTS clientesOFFTRADE; 

CREATE TEMP VIEW clientesOFFTRADE AS
SELECT * FROM venta 
JOIN  mae
on mae.customer = venta.0CUSTOMER
where mae.channel = 'OFF TRADE'
limit 10000;

SELECT * FROM clientesOFFTRADE;


%sql
DROP VIEW IF EXISTS clientesCapFri; 

CREATE TEMP VIEW clientesCapFri AS
SELECT * FROM mae 
RIGHT JOIN  capFri 
on mae.customer = capFri.customer_cap
limit 10000;

SELECT * FROM clientesCapFri
SORT by customer DESC;


%sql
DROP VIEW IF EXISTS HistoricoVenta; 

CREATE TEMP VIEW HistoricoVenta AS
SELECT * FROM venta 
LEFT JOIN  capFri
on (venta.0CUSTOMER = capFri.customer_cap) 
limit 10000;

SELECT * FROM HistoricoVenta

%sql
SELECT 4ZPA_O5A01_MATERIAL, occurs
FROM (SELECT 4ZPA_O5A01_MATERIAL, count(*) as occurs
      FROM HistoricoVenta
      GROUP BY 4ZPA_O5A01_MATERIAL
      ORDER BY  occurs DESC
      LIMIT 120
     ) T2;

     %sql 

delimiter $$
CREATE TRIGGER Backup BEFORE DELETE ON HistoricoVenta
FOR EACH ROW
BEGUIN
INSERT INTO HistoricoVenta_backup
VALUES (OLD.0CUSTOMER,
OLD.4ZPA_O5A01_MATERIAL,
OLD.sum(4ZPA_O5A01_FGP),
OLD.sum(4ZPA_O5A01_HL),
customer_cap,
material)
END; 
$$ delimiter; 