-- El motor de almacenamiento InnoDB utiliza bloqueo de nivel de fila para garantizar la
-- integridad de los datos. Sin embargo, algunos motores de almacenamiento (como MEMORY,
-- MyISAM, Aria y MERGE) bloquean toda la tabla para evitar conflictos. Estos motores de 
-- almacenamiento utilizan dos colas independientes para recordar declaraciones pendientes;
-- uno es para SELECT y el otro es para declaraciones de escritura (INSERT, DELETE, UPDATE).
-- De forma predeterminada, este último tiene una prioridad más alta.

-- Para dar a las operaciones de escritura una prioridad más baja, la variable de sistema del servidor 
-- low_priority_updates se puede establecer en ON. La opción está disponible tanto en el nivel global 
-- como en el de sesión, y se puede configurar al inicio o mediante la instrucción SET.

-- Cuando se han establecido demasiados bloqueos de tabla mediante sentencias de escritura, se ejecutan algunos SELECT pendientes.
-- El número máximo de bloqueos de escritura que se pueden adquirir antes de que esto suceda está determinado por la variable de 
-- sistema del servidor max_write_lock_count, que es dinámica.

-- Si las sentencias de escritura tienen una prioridad más alta (por defecto), la prioridad de las sentencias de escritura 
-- individuales (INSERT, REPLACE, UPDATE, DELETE) se puede cambiar mediante el atributo LOW_PRIORITY, y la prioridad de una 
-- sentencia SELECT se puede elevar mediante el atributo HIGH_PRIORITY. Además, LOCK TABLES admite un atributo LOW_PRIORITY 
-- para los bloqueos WRITE.

-- Si las sentencias de lectura tienen una prioridad más alta, la prioridad de un INSERT se puede cambiar mediante el atributo
-- HIGH_PRIORITY. Sin embargo, la prioridad de otras declaraciones de escritura no se puede aumentar individualmente.


-- El uso de LOW_PRIORITY o HIGH_PRIORITY para un INSERT evita que se utilicen inserciones simultáneas.

-- https://devdocs.io/mariadb/server-locale/index



-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- La opción retrasada para la instrucción INSERT es una extensión MARIADB / MYSQL a SQL estándar que es muy útil si tiene 
-- clientes que no pueden o no necesitan esperar a que se complete el inserto. Esta es una situación común cuando usa Mariadb
-- para iniciar sesión y también ejecuta periódicamente seleccionar y actualizar las declaraciones que tardan mucho tiempo en 
-- completarse.

-- Cuando un cliente usa el inserto retrasado, obtiene un bien del servidor a la vez, y la fila está en cola para insertar 
-- cuando la tabla no está en uso por ningún otro hilo.

-- Otro beneficio importante de usar el inserto retrasado es que las inserciones de muchos clientes se agrupan y se escriben 
-- en un bloque. Esto es mucho más rápido que realizar muchos insertos separados.

-- Tenga en cuenta que el inserto retrasado es más lento que un inserto normal si la tabla no está en uso de otra manera. 
-- También está la sobrecarga adicional para que el servidor maneje un hilo separado para cada tabla para la cual hay 
-- filas retrasadas. Esto significa que debe usar Insertar retrasado solo cuando está seguro de que lo necesita.

-- Las filas en cola se mantienen solo en la memoria hasta que se insertan en la tabla. Esto significa que si termina por 
-- la fuerza a la fuerza (por ejemplo, con Mill -9) o si MySqld muere inesperadamente, se pierden cualquier fila en cola 
-- que no se hayan escrito en el disco.

-- El número de hilos retardados insertos concurrentes está limitada por las variables del sistema Max_Delayed_Threads Server.
-- Si se establece en 0, el inserto retrasado está deshabilitado. El valor de la sesión puede ser igual al valor global, 
-- o 0 para deshabilitar esta declaración para la sesión actual. Si se ha alcanzado este límite, la cláusula retardada se
-- ignorará silenciosamente las declaraciones posteriores (no se producirá ningún error).

-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////


-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- Hay algunas limitaciones sobre el uso de retrasos:

-- Insertar funciona retrasado solo con myIsam, memoria, archivo y mesas de orillas de oración. Si ejecuta inserto retrasado con otro motor de almacenamiento, obtendrá un error como este: Error 1616 (HY000): la opción retrasada no es compatible con la Tabla 'Tab_name'

-- Para las tablas de MyInsam, si no hay bloques gratuitos en el centro del archivo de datos, se admiten las declaraciones SELECT e INSERT. En estas circunstancias, rara vez necesita usar el inserto retrasado con Myisam.

-- Insertar retrasado debe usarse solo para insertar sentencias que especifiquen las listas de valor. El servidor ignora retrasado para insertar ... Seleccione o Insertar ... En las declaraciones de actualización de la clave duplicada.

-- Debido a que la declaración de inserción retrasada devuelve de inmediato, antes de que se inserten las filas, no puede usar last_insert_id () para obtener el valor de auto_inscrement que la declaración podría generar.

-- Las filas retrasadas no son visibles para seleccionar las declaraciones hasta que realmente se hayan insertado.

-- Después de insertar retrasado, Row_Count () devuelve el número de las filas que intentó insertar, no el número de escrituras exitosas.

-- El retraso se ignora en los servidores de replicación de esclavos, de modo que el inserto retrasado se trata como un inserto normal en los esclavos. Esto se debe a que retrasado podría hacer que el esclavo tenga datos diferentes que el maestro. Insertar las declaraciones retrasadas no son seguras para la replicación.

-- Las declaraciones retrasadas de inserto pendientes se pierden si una tabla está con escritura bloqueada y se usa la tabla para modificar la estructura de la tabla.

-- Insertar retrasado no es compatible con vistas. Si lo intenta, obtendrá un error como este: Error 1347 (HY000): 'View_Name' no es la tabla base
-- Insertar retrasado no es compatible con tablas particionadas.
-- Insertar retrasado no es compatible dentro de los programas almacenados.
-- Insertar retrasado no funciona con los desencadenantes.
-- Insertar retrasado no funciona si hay una restricción de cheques en su lugar.
-- El inserto retrasado no funciona si el modo SKIP-NEW está activo.
-- ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

-- Normalmente, inserte las paradas y vueltas hacia atrás cuando se encuentra con un error.

-- Al usar la palabra clave Ignorar, todos los errores se convierten en advertencias, lo que no detendrá los insertos de filas adicionales.

-- Los ignorados y las opciones retrasadas se ignoran cuando se usa en la actualización de la clave duplicada.

-- Antes de MySQL y Mariadb 5.5.28, no se emitieron advertencias para duplicar errores clave al usar Ignore. Puede obtener el comportamiento antiguo si configura OLD_MODE a NO_DUP_KEY_WARNINGS_WITH_IGNORE.
-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////



INSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]
 [INTO] tbl_name [PARTITION (partition_list)] [(col,...)]
 {VALUES | VALUE} ({expr | DEFAULT},...),(...),...
 [ ON DUPLICATE KEY UPDATE
   col=expr
     [, col=expr] ... ] [RETURNING select_expr 
      [, select_expr ...]]


INSERT [LOW_PRIORITY | DELAYED | HIGH_PRIORITY] [IGNORE]
    [INTO] tbl_name [PARTITION (partition_list)]
    SET col={expr | DEFAULT}, ...
    [ ON DUPLICATE KEY UPDATE
      col=expr
        [, col=expr] ... ] [RETURNING select_expr 
      [, select_expr ...]]


INSERT [LOW_PRIORITY | HIGH_PRIORITY] [IGNORE]
    [INTO] tbl_name [PARTITION (partition_list)] [(col,...)]
    SELECT ...
    [ ON DUPLICATE KEY UPDATE
      col=expr
        [, col=expr] ... ] [RETURNING select_expr 
      [, select_expr ...]]
