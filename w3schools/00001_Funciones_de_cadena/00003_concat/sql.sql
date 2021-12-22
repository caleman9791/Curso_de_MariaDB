-- Devuelve la cadena que resulta de concatenar los argumentos. 
-- Puede tener uno o más argumentos. Si todos los argumentos son 
-- cadenas no binarias, el resultado es una cadena no binaria. 
-- Si los argumentos incluyen cualquier cadena binaria, 
-- el resultado es una cadena binaria. Un argumento numérico se 
-- convierte en su forma de cadena binaria equivalente.

SELECT CONCAT('Ma', 'ria', 'DB');
+---------------------------+
| CONCAT('Ma', 'ria', 'DB') |
+---------------------------+
| MariaDB                   |
+---------------------------+

-- Observa que si un valor es NULO todo el resultado será NULO
SELECT CONCAT('Ma', 'ria', NULL, 'DB');
+---------------------------------+
| CONCAT('Ma', 'ria', NULL, 'DB') |
+---------------------------------+
| NULL                            |
+---------------------------------+

SELECT CONCAT(42.0);
+--------------+
| CONCAT(42.0) |
+--------------+
| 42.0         |
+--------------+
