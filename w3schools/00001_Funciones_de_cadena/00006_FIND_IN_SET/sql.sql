


Devuelve la posición de índice donde se produce el patrón dado en una lista de cadenas. 
El primer argumento es el patrón que desea buscar. El segundo argumento es una cadena que 
contiene variables separadas por comas. Si el segundo argumento es del tipo de datos establecido, 
la función se optimiza para usar aritmética de bits.

Si el patrón no se produce en la lista de cadenas o si la lista de cadenas es una cadena vacía, 
la función devuelve 0. Si cualquiera de los argumentos es nulo, la función devuelve NULL. 
La función no devuelve el resultado correcto si el patrón contiene un carácter de coma (",").



SELECT FIND_IN_SET('b','a,b,c,d') AS "Found Results";
+---------------+
| Found Results |
+---------------+
|             2 |
+---------------+


