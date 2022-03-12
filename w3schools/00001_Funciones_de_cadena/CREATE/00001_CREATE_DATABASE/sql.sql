



CREATE [OR REPLACE] {DATABASE | SCHEMA} [IF NOT EXISTS] db_name
    [create_specification] ...

create_specification:
    [DEFAULT] CHARACTER SET [=] charset_name
  | [DEFAULT] COLLATE [=] collation_name
  | COMMENT [=] 'comment'

  

-- MariaDB comenzando con 10.1.3

-- La cláusula OR REPLACE se agregó en MariaDB 10.1.3

DROP DATABASE IF EXISTS db_name;

-- Crea una base de datos  si no existe
CREATE DATABASE IF NOT EXISTS db_name;

-- Crea una base de datos
CREATE DATABASE db_name;

--  Puedes agregar un comentario a la base de datos al crearla
CREATE DATABASE presentations COMMENT 'Comentario corto';



CREATE DATABASE czech_slovak_names 
  CHARACTER SET = 'keybcs2'
  COLLATE = 'keybcs2_bin';


-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE DATABASE                                         |        Crear una base de datos.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE EVENT                                            |        Crea y programar un nuevo evento.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE FUNCTION                                         |        Crea una función almacenada.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE FUNCTION UDF                                     |        Create a user-defined function.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE INDEX                                            |        Create an index on one or more columns.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE LOGFILE GROUP                                    |        The CREATE LOGFILE GROUP statement is not supported by MariaDB. It was orig...
-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE PACKAGE                                          |        Create a stored package, in Oracle-mode.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE PACKAGE BODY                                     |        Creates the package body for a stored package.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE PROCEDURE                                        |        Creates a stored procedure.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE ROLE                                             |        Add new roles.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE SEQUENCE                                         |        Creates a sequence that generates new values when called with NEXT VALUE FOR.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE SERVER                                           |        Define a server.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE TABLE                                            |        Creates a new table.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE TABLESPACE                                       |        CREATE TABLESPACE is not available in MariaDB.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE TRIGGER                                          |        Create a new trigger.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE USER                                             |        Create new MariaDB accounts.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
CREATE VIEW                                             |        Create or replace a view.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
Silent Column Changes                                   |        MariaDB silently changes column specifications in certain situations.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
Generated (Virtual and Persistent/Stored) Columns       |        Generated (virtual and persistent/stored) columns.
-------------------------------------------------------------------------------------------------------------------------------------------------| 
Invisible Columns                                       |        Invisible columns are hidden in certain contexts. 