-- Concat_ws () significa concatenar con separador y es 
-- una forma especial de concat (). 

-- El primer argumento es el separador para el resto de 
-- los argumentos.
-- El separador se agrega entre las cuerdas a concatenar. 
-- El separador puede ser una cadena, 
-- al igual que el resto de los argumentos.

-- Si el separador es nulo, el resultado es nulo; 
-- Se saltan todos los demás valores nulos.
-- Esto hace que Concat_WS () sea adecuado cuando 
-- quiera concatenar algunos valores y evitar perder 
-- toda la información si uno de ellos es nulo.

SELECT CONCAT_WS(',','First name','Second name','Last Name');

+-------------------------------------------------------+
| CONCAT_WS(',','First name','Second name','Last Name') |
+-------------------------------------------------------+
| First name,Second name,Last Name                      |
+-------------------------------------------------------+

SELECT CONCAT_WS('-','Floor',NULL,'Room');
+------------------------------------+
| CONCAT_WS('-','Floor',NULL,'Room') |
+------------------------------------+
| Floor-Room                         |
+------------------------------------+
