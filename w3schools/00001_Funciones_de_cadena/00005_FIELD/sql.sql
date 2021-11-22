

Devuelve la posición de índice de la cadena o número que coincide con el patrón dado. 
Devuelve 0 en el caso de que ninguno de los argumentos coincide con el patrón.
Eleva un error 1582 si no se le da al menos dos argumentos.

Cuando todos los argumentos dados a la función de FIELD() son cadenas, las mismas son 
insensibles a las mayúsculas y a las minúsculas "case-sensitive". Cuando todos los argumentos 
son números, son tratados como números. De lo contrario, son tratados como dobles.

Si el patrón dado se produce más de una vez, la función de FIELD() solo devuelve el índice 
de la primera instancia. Si el patrón dado es nulo, la función devuelve 0, ya que un patrón 
nulo siempre no coincide.

Esta función es complementaria a la función ELT().

Nota: el primer parámetro es el que define el patrón dado.


SELECT FIELD('ej', 'Hej', 'ej', 'Heja', 'hej', 'foo') 
   AS 'Field Results';
+---------------+
| Field Results | 
+---------------+
|             2 |
+---------------+

SELECT FIELD('fo', 'Hej', 'ej', 'Heja', 'hej', 'foo')
   AS 'Field Results';
+---------------+
| Field Results | 
+---------------+
|             0 |
+---------------+

SELECT FIELD(1, 2, 3, 4, 5, 1) AS 'Field Results';
+---------------+
| Field Results |
+---------------+
|             5 |
+---------------+

SELECT FIELD(NULL, 2, 3) AS 'Field Results';
+---------------+
| Field Results |
+---------------+
|             0 |
+---------------+

SELECT FIELD('fail') AS 'Field Results';
Error 1582 (42000): Incorrect parameter count in call
to native function 'field'
