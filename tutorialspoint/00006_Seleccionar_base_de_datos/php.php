<?php
// $dbhost = 'localhost';
// $dbuser = 'root';
// $dbpass = '';
// $conn   = mysql_connect($dbhost, $dbuser, $dbpass);

// if (!$conn) {
//    die('Could not connect: ' . mysql_error());
// }
// echo 'Connected successfully';

// mysql_select_db('PRODUCTS');
// mysql_close($conn);

$servername = "localhost";
$username = "root";
$password = "";

try {

	$conn = new PDO("mysql:host=$servername", $username, $password);

	$conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	echo "Conectado";
	echo "<br/>";
	echo "<br/>";
	$all_db = $conn->query('SHOW DATABASES');

	$rows = $all_db->fetchAll();
	echo "=========================================================================== <br/>";
	var_dump($rows);
	echo "=========================================================================== <br/>";

	for ($i = 0; $i < count($rows); $i++) {
		echo "<br/>";
		echo "======================================================================== Dato {$i} <br/>";
		// var_dump($rows[$i]);
		echo $rows[$i]['Database'];
		echo "<br/>";
	}

} catch (PDOException $e) {
	echo "Fallo la conexión: " . $e->getMessage();
}

;
