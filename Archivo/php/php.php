 <?php

$_POST['function'] = "obtener_bases_de_datos";
if (isset($_POST['function'])) {
   FunctionName($_POST['function']);
}

function FunctionName($value)
{
   $servername = "localhost";
   $username   = "root";
   $password   = "";
   try {
      $conn = new PDO("mysql:host=$servername;", $username, $password);

      $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

      if ($value == "obtener_bases_de_datos") {

         $stmt = $conn->prepare("show databases");
         $stmt->execute();
         $result = $stmt->fetchAll(PDO::FETCH_ASSOC);

         // var_dump($result);
         // echo "<br/>";
         // echo "<br/>";
         // echo "<br/>";
         // print_r($result);
         // echo "<br/>";
         // echo "<br/>";
         // echo "<br/>";
         echo json_encode($result);
      }
   } catch (PDOException $e) {
      echo "Error: " . $e->getMessage();
   }
   $conn = null;
}
