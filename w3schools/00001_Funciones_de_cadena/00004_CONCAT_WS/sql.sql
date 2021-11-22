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


SET @a = 'gnu', @b = 'penguin', @c = 'sea lion';
Query OK, 0 rows affected (0.00 sec)

SELECT CONCAT_WS(', ', @a, @b, @c);
+-----------------------------+
| CONCAT_WS(', ', @a, @b, @c) |
+-----------------------------+
| gnu, penguin, sea lion      |
+-----------------------------+


SET @a = 'a', @b = NULL, @c = 'c';

SELECT CONCAT_WS('', @a, @b, @c);
+---------------------------+
| CONCAT_WS('', @a, @b, @c) |
+---------------------------+
| ac                        |
+---------------------------+															


-- La declaración SET asigna valores a diferentes 
-- tipos de variables que afectan el funcionamiento 
-- del servidor o su cliente. Versiones anteriores de 
-- la opción de conjunto de MySQL empleados, pero esta 
-- sintaxis se estaba desaprobando a favor
-- del conjunto sin opción, y se eliminó en Mariadb 10.0.


-- Cambiar una variable del sistema utilizando la instrucción 
-- SET no hace el cambio de forma permanente. Para hacerlo, 
-- el cambio debe hacerse en un archivo de configuración.

-- Para establecer variables en una base por consulta 
-- (desde Mariadb 10.1.2), consulte la Declaración Establecer.

-- Consulte Mostrar variables para la documentación en la 
-- visualización de las variables del sistema del servidor.

-- Vea las variables del sistema del servidor para obtener 
-- una lista de todas las variables del sistema.