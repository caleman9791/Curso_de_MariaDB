<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8"/>
      <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
      <title>
         Document
      </title>
   </head>
   <body>
      <link href="https://www.w3schools.com/w3css/4/w3.css" rel="stylesheet"/>
      <div class="w3-container">
         <p>
            En esta entrada tocaremos el tema de conexiones a la base de datos MariaDB. Recuerda que todas las consultas MySQL son compatibles con MariaDB.
         </p>
         <p>
            Puede que existan algunos cambios mínimos, sin embargo vemos esta comparación de uso en https://lamp.ciscoar.com/mariadb-and-mysql-compatibility/ donde nos dice:
         </p>
         <blockquote class="w3-tiny">
            <p>
               Tan pronto como comience a trabajar con MariaDB, notará su compatibilidad con MySQL, de hecho, cada vez que inicie sesión en la consola MariaDB usando el comando CLI "MySQL", debe darse cuenta de que está usando exactamente el mismo comando CLI que se usaría en MySQL.
            </p>
         </blockquote>
         <p>
            En la entrada anterior a esta hablé sobre la ejecución de bases de datos usando la consola de comandos "terminal". No te preocupes aquí no se usará la consola, pero usaremos PHP para poderdesplegar en el navegadorlos datos de las consultas SQL que realizaremos a la base de datos MariaDB.
         </p>
         <p>
            ¡Comencemos! Actualmente PHP tiene dos clases que trabajan la conexión a base de datos referentes a MariaDB y MySQL. Observamos en el siguiente enlace, que están divididas como capas extensiones de capa de abstracción y extensiones nativas de los desarrolladores.
         </p>
         <p>
            Primero te muestro una clase creada por mí para realizar instancias de la conexión de base de datos. Cada programador puede ver las cosas de distintas formas, sin embargo debemos estar al día con comentarios de programadores con años de experiencia y aprenderde ellos. Así que he chacho esta clase de PHP, lo cual podrás usar en tus proyectos.
         </p>
         <div class="w3-panel w3-card w3-light-grey" style="border:5px solid green !important;">
            <h5>
               Ejemplo de una clase de PHP para conectar con la base de datos usado PDO.
            </h5>
            <div class="w3-code jsHigh notranslate">
               class ConnDB
               <br/>
               {
               <div class="" style="margin-left: 20px !important;">
                  <br/>
                  private $servername;
                  <br/>
                  private $username;
                  <br/>
                  private $password;
                  <br/>
                  private $dbname;
                  <br/>
                  private $conn;
                  <br/>
                  <br/>
                  public function __construct($cadena)
                  <br/>
                  {
                  <br/>
                  <div class="" style="margin-left: 20px !important;">
                     <br/>
                     $this->servername = "localhost";
                     <br/>
                     $this->username = "root";
                     <br/>
                     $this->password = "";
                     <br/>
                     $this->dbname = $cadena;
                     <br/>
                     <div class="" style="margin-left: 20px !important;">
                        <br/>
                        try {
                        <div class="" style="margin-left: 20px !important;">
                           <br/>
                           $this->conn = new PDO(
                           <br/>
                           "mysql:host=$this->servername;dbname=$this->dbname",
                           <br/>
                           $this->username,
                           <br/>
                           $this->password);
                           <br/>
                           <br/>
                           $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                           <br/>
                           <br/>
                           return $this->conn;
                           <br/>
                        </div>
                        <br/>
                        } catch (PDOException $e) {
                        <div class="" style="margin-left: 20px !important;">
                           <br/>
                           return false;
                           <br/>
                        </div>
                        }
                        <br/>
                     </div>
                  </div>
                  }
                  <br/>
               </div>
               }
               <br/>
               $conexion = new ConnDB("app_banco");
               <br/>
               var_dump($conexion);
               <br/>
            </div>
         </div>
         <p>
            Ya que muestro un ejemplo de una clasepara conexiónque puedes usar en tus proyectos, de hecho es así la puedes usar, sin embargo debes considerar que esto sería para un proyecto donde solo tú yunos pocos tendrán el control del desarrollo y, para hacer trabajos colaborativos se recomienda que utilices métodos de instancia ya creados por grandes compañías que invierten mucho dinero y esfuerzo para que estos marcos sean uniformes, y que los usuarios de estos, puedan trabajar de manera colaborativa y que su coherencia sea compartida. Recuerda que escribir instrucciones para programaspuede ser confuso cuando no se sabe realmente resultado esperado de este gran programay más aúncuando se escribe un código fuente que servirá para diferentes objetivos. Entonces estas clases están pensadas para que sean utilidades en diferentes escenarios.
         </p>
         <p>
            Aquí te dejo algunos enlaces donde exponen ficheros de código fuente de CakePHP y se define el funcionamiento del mismo, esto para conocedores de PHP a fondo. Estos están pensados para consultas, conexión, consultas múltiples, tipos de datos enviados y recibidos, control de excepcionesy muchos otros objetivos.
         </p>
         <blockquote class="w3-tiny">
            <p>
               https://api.cakephp.org/3.6/source-class-Cake.Datasource.ConnectionManager.html#20-207
            </p>
            <p>
               https://api.cakephp.org/3.3/source-class-Cake.Database.Driver.PDODriverTrait.html#27-32
            </p>
            <p>
               https://api.cakephp.org/3.0/source-class-Cake.Database.Query.html#25-1765
            </p>
            <p>
               https://api.cakephp.org/3.6/source-class-Cake.Database.Statement.PDOStatement.html#20-134
            </p>
         </blockquote>
         <p>
            Observa este comentario en un blog de discusión para programadores de todo el mundo aquí https://stackoverflow.com/a/21832927lo cual sehace referencia al marco de trabajo Symfony donde nos dice:
         </p>
         <blockquote class="w3-tiny">
            <p>
               El uso de singletons en PHP se considera una mala práctica. Desde mi experiencia, el problema más problemático con ellos son las pruebas unitarias. Es difícil asegurarse de que dos pruebas sean independientes cuando se prueban singletons.
            </p>
            <p>
               Delegaría la responsabilidad de la restricción 'solo debería existir una instancia' al código que crea el objeto Db.
            </p>
            <p>
               También para mí, parece que hay un malentendido en cómo funcionan los Singletons en PHP en contraste con otros lenguajes: si tiene 10,000 solicitudes concurrentes, por ejemplo, entonces cada solicitud se ejecuta en un proceso o hilo de PHP separado, lo que significa que todos tendrán los suyos propios. instancia del 'singleton', no se puede compartir este objeto para más de una sola solicitud (cuando se ejecuta PHP en escenarios de backend web comunes)
            </p>
            <p>
               No hay 'agrupación de conexiones' en PHP, pero puede usar conexiones persistentes mysqli para mysql. Se puede lograr pasando la p: delante del nombre de host al crear mysqli. Esto podría ayudar aquí, pero manipúlelo con cuidado (es decir, lea la documentación primero)
            </p>
         </blockquote>
         <p>
            Por otro lado veamos que en la documentación oficial en https://www.php.net/manual/es/mysqlinfo.api.choosing.php nos dice:
         </p>
         <blockquote class="w3-tiny">
            PHP ofrece tres API diferentes para conectarse a MySQL. Abajo se muestran las API proporcionadas por las extensiones mysql, mysqli, y PDO. Cada trozo de código crea una conexión al servidor de MySQL que se está ejecutando en "ejemplo.com" con el nombre de usuario "usuario" y la contraseña "contraseña". También se ejecuta una consulta para saludar al usuario.
         </blockquote>
         <div class="w3-panel w3-card w3-light-grey" style="border:5px solid green !important;">
            <h4>
               Ejemplo de conexiónusando mysqli()
            </h4>
            <div class="w3-code jsHigh notranslate">
               // mysqli
               <br/>
               $mysqli = new mysqli(
               <br/>
               "ejemplo.com", "usuario", "contraseña", "basedatos");
               <br/>
               $resultado =
               <br/>
               $mysqli->query(
               <br/>
               "SELECT '¡Hola, querido usuario de MySQL!' AS _message FROM DUAL");
               <br/>
               $fila = $resultado->fetch_assoc();
               <br/>
               echo htmlentities($fila['_message']);
               <br/>
            </div>
         </div>
         <div class="w3-panel w3-card w3-light-grey" style="border:5px solid green !important;">
            <h4>
               Ejemplo de conexión con la clase PDO
            </h4>
            <div class="w3-code jsHigh notranslate">
               // PDO
               <br/>
               $pdo = new PDO('mysql:host=ejemplo.com;dbname=basedatos', 'usuario', 'contraseña');
               <br/>
               $sentencia = $pdo->query("SELECT '¡Hola, querido usuario de MySQL!' AS _message FROM DUAL");
               <br/>
               $fila = $sentencia->fetch(PDO::FETCH_ASSOC);
               <br/>
               echo htmlentities($fila['_message']);
               <br/>
            </div>
         </div>
         <div class="w3-panel w3-card w3-light-grey" style="border:2px solid red !important;">
            <p style="color:red; font-weight: bold;">
               Nota: no debes usar bajo ningún concepto.
            </p>
            <h4>
               Ejemplo de conexión con mysql_connect()
            </h4>
            <div class="w3-code jsHigh notranslate" style="border-color: red;">
               // mysql
               <br/>
               $c = mysql_connect("ejemplo.com", "usuario", "contraseña");
               <br/>
               mysql_select_db("basedatos");
               <br/>
               $resultado = mysql_query("SELECT '¡Hola, querido usuario de MySQL!' AS _message FROM DUAL");
               <br/>
               $fila = mysql_fetch_assoc($resultado);
               <br/>
               echo htmlentities($fila['_message']);
               <br/>
            </div>
         </div>
         <div class="">
         </div>
         <blockquote class="w3-tiny">
            <p>
               Se recomienda usar las extensiones mysqli o PDO_MySQL. No se recomienda usar la extensión mysql antigua para nuevos desarrollos, ya que ha sido declarada obsoleta en PHP 5.5.0 y eliminada en PHP 7. Se proporciona una matriz detallada de comparación de características más abajo. El rendimiento global de las tres extensiones se considera que sea aproximadamente el mismo. Aunque el rendimiento de la extensión aporta solamente una fracción del total del tiempo de ejecución de una consulta web de PHP. A menudo, el impacto es tan bajo como 0.1%.
            </p>
            Ya observamos unos ejemplos, sobre conexiones y nos percatamos que hay una que ya está en desuso.
         </blockquote>
         <p>
            Ahora mostraré unos fragmentos actualizados, lo cual podemos usar en nuestros proyectos. Adicionalmenteveremos como se puede usar MySQLi orientado a objetos y orientado a procedimientos. Pero no sin antes citar la documentación oficial de PHP donde nos dice.
         </p>
         <blockquote class="w3-tiny">
            <p>
               Advertencia
            </p>
            <p>
               Esta extensión fue declarada obsoleta en PHP 5.5.0 y eliminada en PHP 7.0.0. En su lugar debería utilizarse las extensiones MySQLi o PDO_MySQL. Véase también la guía MySQL: elegir una API. Las alternativas a esta función son:
            </p>
            <p>
               mysqli_connect()
            </p>
            <p>
               PDO::__construc
            </p>
            <p>
               URL para ver aquí https://www.php.net/manual/en/function.mysql-connect.php
            </p>
         </blockquote>
         <div class="w3-panel w3-card w3-light-grey" style="border:5px solid green !important;">
            <h4>
               Ejemplo de conexión con mysql_connect()
            </h4>
            <div class="w3-code jsHigh notranslate">
               $servername = "localhost";
               <br/>
               $username = "username";
               <br/>
               $password = "password";
               <br/>
               // Create connection
               <br/>
               $conn = mysqli_connect($servername, $username, $password);
               <br/>
               // Check connection
               <br/>
               if (!$conn) {
               <br/>
               die("Connection failed: " . mysqli_connect_error());
               <br/>
               }
               <br/>
               echo "Connected successfully";
               <br/>
            </div>
         </div>
         <div class="w3-panel w3-card w3-light-grey" style="border:5px solid green !important;">
            <h4>
               Ejemplo de conexión con mysql_connect()
            </h4>
            <div class="w3-code jsHigh notranslate">
               $servername = "localhost";
               <br/>
               $username = "username";
               <br/>
               $password = "password";
               <br/>
               try {
               <br/>
               $conn = new PDO("mysql:host=$servername;dbname=myDB", $username, $password);
               <br/>
               // set the PDO error mode to exception
               <br/>
               $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
               <br/>
               echo "Connected successfully";
               <br/>
               } catch(PDOException $e) {
               <br/>
               echo "Connection failed: " . $e->getMessage();
               <br/>
               }
               <br/>
            </div>
         </div>
         <p>
            Yo utilizo PDO pues en la documentación nos presenta que mysqli utiliza driversnativosy PDO es una capa de abstracción, ya que utilizo MariaDB asípuedo estar trabajando con una conexión que en un futuro tendré disponible, estopor el debate que existe entre MariaDB y MySQL. Ya en una de mis entradas hablé sobre el tema de las licencias de MySQL y todo lo relacionado a MariaDB con sus respectivas referencias. Nos vemos en un aproxima entrada.
         </p>
      </div>
   </body>
</html>
