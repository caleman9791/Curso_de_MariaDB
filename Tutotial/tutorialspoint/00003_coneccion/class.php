<?php

class ConnDB
{

   private $servername;
   private $username;
   private $password;
   private $dbname;
   private $conn;

   public function __construct($cadena)
   {

      $this->servername = "localhost";
      $this->username   = "root";
      $this->password   = "";
      $this->dbname     = $cadena;

      try {
         $this->conn = new PDO(
            "mysql:host=$this->servername;dbname=$this->dbname",
            $this->username,
            $this->password);

         $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
         return $this->conn;

      } catch (PDOException $e) {

         return false;
      }
   }

}

$conexion = new ConnDB("app_banco");

var_dump($conexion);
