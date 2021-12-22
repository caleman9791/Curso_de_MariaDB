

-- Formatos El número dado para la pantalla como una cadena, agregando separadores
-- a la posición apropiada y redondeando los resultados a la posición decimal dada. 
-- Por ejemplo, formatearía 15233.345 a 15,233.35.

-- Si la posición decimal dada es 0, se redondea para devolver el punto decimal o
-- una parte fraccionada. Opcionalmente, puede especificar un valor de configuración
-- regional para formatear números al patrón apropiado para la región dada.


SELECT FORMAT(1234567890.09876543210, 4) AS 'Format';
+--------------------+
| Format             |
+--------------------+
| 1,234,567,890.0988 |
+--------------------+

SELECT FORMAT(1234567.89, 4) AS 'Format';
+----------------+
| Format         |
+----------------+
| 1,234,567.8900 |
+----------------+

SELECT FORMAT(1234567.89, 0) AS 'Format';
+-----------+
| Format    |
+-----------+
| 1,234,568 |
+-----------+


SELECT FORMAT(123456789,2,'rm_CH') AS 'Format';
+----------------+
| Format         |
+----------------+
| 123'456'789,00 |
+----------------+

SELECT FORMAT(123456789123456789,1,'rm_CH') AS 'Format';
SELECT FORMAT(123456789123456789,2,'rm_CH') AS 'Format';
SELECT FORMAT(123456789123456789,3,'rm_CH') AS 'Format';
SELECT FORMAT(123456789123456789,4,'rm_CH') AS 'Format';
SELECT FORMAT(123456789123456789,5,'rm_CH') AS 'Format';
SELECT FORMAT(123456789123456789,6,'rm_CH') AS 'Format';
SELECT FORMAT(123456789123456789,7,'rm_CH') AS 'Format';
SELECT FORMAT(123456789123456789,8,'rm_CH') AS 'Format';
SELECT FORMAT(123456789123456789,9,'rm_CH') AS 'Format';

-- https://devdocs.io/mariadb/server-locale/index

-- https://mariadb.com/kb/en/server-locale/