-- La declaración anterior crea un evento llamado MyEvent. Este evento se ejecuta una vez, una hora después de su creación, al ejecutar una 
-- declaración SQL que incrementa el valor de la columna MyCol de MySchema.Myable Tabla por 1.

-- El Event_Name debe ser un identificador de Mariadb válido con una longitud máxima de 64 caracteres. Puede delimitarse utilizando garrapatas,
 -- y puede estar calificado con el nombre de un esquema de base de datos. Un evento se asocia con un usuario de Mariadb (el definidor) y 
 -- un esquema, y ​​su nombre debe ser único entre los nombres de los eventos dentro de ese esquema. En general, las reglas
  -- que rigen los nombres de los eventos son los mismos que para los nombres de las rutinas almacenadas. Ver nombres de identificadores.

-- Si no se indica ningún esquema como parte de Event_Name, se asume el esquema predeterminado (actual).

-- Para los identificadores válidos para usar como nombres de eventos, consulte Nombres de identificadores.
-- O reemplazar

-- La cláusula o la cláusula de reemplazo se incluyó en Mariadb 10.1.4. Si se usa y el evento ya existe, en lugar de que se devuelva un error,
 -- el evento existente se reducirá y reemplazará por el evento recién definido.
-- Si no existe

-- Si se usa la cláusula de IF no existe, Mariadb devolverá una advertencia en lugar de un error si el evento ya existe. 
-- No se puede utilizar junto con o reemplazar.
-- EN LA FECHA PREVISTA

-- La cláusula de programación se puede utilizar para especificar cuándo se debe activar el evento.
-- A

-- Si desea ejecutar el evento solo una vez (un evento de una vez), puede usar la palabra clave en la palabra, seguido de una marca de tiempo. 
-- Si usa
 -- Current_Timestamp, el evento actúa tan pronto como se crea. Como conveniencia, puede agregar uno o más intervalos a esa marca de tiempo. 
 -- También 
 -- puede especificar una marca de tiempo en el pasado, de modo que el evento se almacene pero no se active, hasta que lo modifique a través 
 -- del 
 -- evento ALTER.


 CREATE EVENT myevent
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR
    DO
      UPDATE myschema.mytable SET mycol = mycol + 1;


-- El siguiente ejemplo muestra cómo crear un evento que se activará mañana en un momento determinado:

CREATE EVENT example
ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 DAY + INTERVAL 3 HOUR
DO something;

-- También puede especificar que un evento debe activarse en un intervalo regular (evento recurrente). En tales casos, utilice la cláusula EVERY seguida del intervalo.

-- Si un evento es recurrente, puede especificar cuándo debe ocurrir la primera ejecución a través de la cláusula STARTS y un tiempo máximo para la 
-- última ejecución a través de la cláusula ENDS. Las cláusulas STARTS y ENDS van seguidas de una marca de tiempo y, opcionalmente, uno o más 
-- intervalos. La cláusula ENDS puede especificar una marca de tiempo en el pasado, de modo que el evento se almacene pero no se ejecute hasta que lo 
-- modifique mediante ALTER EVENT.

-- En el siguiente ejemplo, el próximo mes se activará un evento recurrente cada hora durante una semana:


CREATE EVENT example
ON SCHEDULE EVERY 1 HOUR
STARTS CURRENT_TIMESTAMP + INTERVAL 1 MONTH
ENDS CURRENT_TIMESTAMP + INTERVAL 1 MONTH + INTERVAL 1 WEEK
DO some_task;



CREATE EVENT myevent
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR
    DO
      UPDATE myschema.mytable SET mycol = mycol + 1;



El próximo mes, un evento recurrente se activará por hora durante una semana:

CREATE EVENT example
ON SCHEDULE EVERY 1 HOUR
STARTS CURRENT_TIMESTAMP + INTERVAL 1 MONTH
ENDS CURRENT_TIMESTAMP + INTERVAL 1 MONTH + INTERVAL 1 WEEK
DO some_task;


CREATE EVENT myevent
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR
    DO
      UPDATE myschema.mytable SET mycol = mycol + 1;


CREATE EVENT myevent
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR
    DO
      UPDATE myschema.mytable SET mycol = mycol + 1;
ERROR 1537 (HY000): Event 'myevent' already exists

CREATE OR REPLACE EVENT myevent
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR
    DO
      UPDATE myschema.mytable SET mycol = mycol + 1;;
Query OK, 0 rows affected (0.00 sec)

CREATE EVENT IF NOT EXISTS myevent
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR
    DO
      UPDATE myschema.mytable SET mycol = mycol + 1;
Query OK, 0 rows affected, 1 warning (0.00 sec)

 SHOW WARNINGS;
+-------+------+--------------------------------+
| Level | Code | Message                        |
+-------+------+--------------------------------+
| Note  | 1537 | Event 'myevent' already exists |
+-------+------+--------------------------------+


CREATE EVENT example
ON SCHEDULE EVERY 1 HOUR
STARTS CURRENT_TIMESTAMP + INTERVAL 1 MONTH
ENDS CURRENT_TIMESTAMP + INTERVAL 1 MONTH + INTERVAL 1 WEEK
DO some_task;



CREATE EVENT myevent
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR
    DO
      UPDATE myschema.mytable SET mycol = mycol + 1;



El próximo mes, un evento recurrente se activará por hora durante una semana:

CREATE EVENT example
ON SCHEDULE EVERY 1 HOUR
STARTS CURRENT_TIMESTAMP + INTERVAL 1 MONTH
ENDS CURRENT_TIMESTAMP + INTERVAL 1 MONTH + INTERVAL 1 WEEK
DO some_task;


CREATE EVENT myevent
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR
    DO
      UPDATE myschema.mytable SET mycol = mycol + 1;


CREATE EVENT myevent
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR
    DO
      UPDATE myschema.mytable SET mycol = mycol + 1;
ERROR 1537 (HY000): Event 'myevent' already exists

CREATE OR REPLACE EVENT myevent
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR
    DO
      UPDATE myschema.mytable SET mycol = mycol + 1;;
Query OK, 0 rows affected (0.00 sec)

CREATE EVENT IF NOT EXISTS myevent
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR
    DO
      UPDATE myschema.mytable SET mycol = mycol + 1;
Query OK, 0 rows affected, 1 warning (0.00 sec)

 SHOW WARNINGS;
+-------+------+--------------------------------+
| Level | Code | Message                        |
+-------+------+--------------------------------+
| Note  | 1537 | Event 'myevent' already exists |
+-------+------+--------------------------------+





-- =========================================================================utf8mb4





-- El próximo mes, un evento recurrente se activará por hora durante una semana:

CREATE EVENT example
ON SCHEDULE EVERY 1 HOUR
STARTS CURRENT_TIMESTAMP + INTERVAL 1 MONTH
ENDS CURRENT_TIMESTAMP + INTERVAL 1 MONTH + INTERVAL 1 WEEK
DO some_task;


CREATE EVENT myevent
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR
    DO
      UPDATE myschema.mytable SET mycol = mycol + 1;


CREATE EVENT myevent
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR
    DO
      UPDATE myschema.mytable SET mycol = mycol + 1;

CREATE OR REPLACE EVENT myevent
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR
    DO
      UPDATE myschema.mytable SET mycol = mycol + 1;;


CREATE EVENT IF NOT EXISTS myevent
    ON SCHEDULE AT CURRENT_TIMESTAMP + INTERVAL 1 HOUR
    DO
      UPDATE myschema.mytable SET mycol = mycol + 1;

-- La palabra reservada EVERY hace que el evento sea recurrente, o sea seguirá ejecutándose 
-- cada vez que se cumpla el tiempo definido como si de un bucle se tratase. 
-- Se usa STARTS y ENDS para inicializar y finalizar el evento recurrente. 

-- Si solo se quiere ejecutar en una sola ocasión  puede utilizar la palabra reservada AT
CREATE EVENT example
  ON SCHEDULE EVERY 1 HOUR
    STARTS CURRENT_TIMESTAMP + INTERVAL 1 MONTH
    ENDS CURRENT_TIMESTAMP + INTERVAL 1 MONTH + INTERVAL 1 WEEK
  DO some_task;


-- La palabra reservada DO se usa para definir lo que se realizará en el momento. La documentación no está muy clara, 
-- en teoría deberíamos poder ejecutar cualquier sentencia, pero no devolverá resultados, por lo que se sobreentiende  
-- que no podemos hacer solo un SELECT, sino que debemos ejecutar una acción como; insertar, modificar o eliminar. 
-- Contrario a esto no tendría  sentido el evento.

-- UPDATE cliente
-- SET regalo = (SELECT tipo_regalo
--                FROM compras
--                WHERE nombre_regalo = "Primer premio")

-- WHERE cliente_visitas < 21;

