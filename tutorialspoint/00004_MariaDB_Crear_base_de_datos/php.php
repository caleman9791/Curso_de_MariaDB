 <?php
// Variables para la conexión
$servername = "localhost";
$username   = "root";
$password   = "";

try {
   // Instancia PDO para trabajar con ella
   $conn = new PDO("mysql:host=$servername;", $username, $password);

// Configuración de errores
   $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

// Nombre que daremos a la base de datos
   $dbname = "nueva_base_de_datos_2";

// Consulta que s eencarga de crear la base de datos
   $sql = "CREATE DATABASE IF NOT EXISTS $dbname";

// condicional  para determinar si estaba creada o no
   if ($conn->exec($sql)) {

      echo "Base de datos creada con éxito<br>";

   } else {

      echo "Base de datos ya existe<br>";
   }

// Manejo de exepciones
} catch (PDOException $e) {

   echo "La conexión falló: " . $e->getMessage();
}
