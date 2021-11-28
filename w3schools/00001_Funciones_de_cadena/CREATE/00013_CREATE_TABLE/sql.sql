


CREATE [OR REPLACE] [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name
    (create_definition,...) [table_options    ]... [partition_options]

CREATE [OR REPLACE] [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name
    [(create_definition,...)] [table_options   ]... [partition_options]
    select_statement

CREATE [OR REPLACE] [TEMPORARY] TABLE [IF NOT EXISTS] tbl_name
   { LIKE old_table_name | (LIKE old_table_name) }
select_statement:
    [IGNORE | REPLACE] [AS] SELECT ...   (Some legal select statement)





CREATE OR REPLACE TABLE table_name (a int);


DROP TABLE IF EXISTS table_name;
CREATE TABLE table_name (a int);


CREATE TABLE nombre_tabla 
(
  
  id_tabla int(11) NOT NUll AUTO_INCREMENT,
  nombre_campo_texto varchar(255) NOT null , 
  nombre_campo_numero decimal(10,2) null

);

CREATE TABLE [IF NOT EXISTS] tbl_name
    (create_definition,...)  
engine=columnstore  [ DEFAULT CHARSET=character-set] 
[COMMENT '[compression=0|1][;]


CREATE TABLE [IF NOT EXISTS] tbl_name
   { LIKE old_table_name | (LIKE old_table_name) }

create_definition:
    { col_name column_definition } 
column_definition:
    data_type
      [NOT NULL | NULL]
      [DEFAULT default_value]
      [COMMENT '[compression=0|1];


-- ////////////////////////////////////////////////////

CREATE TABLE ... LIKE

-- Use la cláusula similar en lugar de una definición de la tabla completa para crear una tabla con la misma definición que otra tabla,
-- Incluyendo columnas, índices y opciones de tabla. Definiciones clave extranjeras, así como cualquier directorio de datos o tabla de directorios de índice
-- No se creará opciones especificadas en la tabla original.

CREATE TABLE table_name (
    id int NOT NULL,
    nombre varchar(20),
    edad int(2)
   
);
INSERT INTO person (id, nombre,edad) 
VALUES 
(1, "Nombre 1", 20),
(2, "Nombre 2", 22),
(3, "Nombre 3", 23),
(4, "Nombre 4", 24),
(5, "Nombre 5", 25),
(6, "Nombre 6", 26),
(7, "Nombre 7", 27),
(8, "Nombre 8", 28),
(9, "Nombre 9", 29),
(10, "Nombre 10", 30),
(11, "Nombre 11", 31),
(12, "Nombre 12", 32),
(13, "Nombre 13", 33);


