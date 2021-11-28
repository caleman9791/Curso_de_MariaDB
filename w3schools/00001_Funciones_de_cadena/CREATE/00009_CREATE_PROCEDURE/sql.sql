
CREATE TABLE producto_ejemplo2 (
    idproducto int not null,
    nombre_producto varchar(50) not null
); 

Insert into producto_ejemplo (idproducto, nombre_producto)

INSERT INTO producto_ejemplo2 (idproducto, nombre_producto)
VALUES 
(1, "Elemento 001"),
(2, "Elemento 002"),
(3, "Elemento 003"),
(4, "Elemento 004"),
(5, "Elemento 005"),
(6, "Elemento 006"),
(7, "Elemento 007"),
(8, "Elemento 008"),
(9, "Elemento 009");




CREATE PROCEDURE funcion_almacenada (param varchar(100))
 BEGIN
 DECLARE nombre_cursor CURSOR FOR  
		SELECT idproducto, nombre_producto 
		FROM producto_ejemplo WHERE nombre_producto LIKE param;

OPEN cursor_name

 END;


 CREATE TABLE c1(i INT);

CREATE TABLE c2(i INT);

CREATE TABLE c3(i INT);

DELIMITER //

CREATE PROCEDURE p1()
BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE x, y INT;
  DECLARE cur1 CURSOR FOR SELECT i FROM producto_ejemplo;
  DECLARE cur2 CURSOR FOR SELECT i FROM producto_ejemplo2;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

  OPEN cur1;
  OPEN cur2;

  read_loop: LOOP
    FETCH cur1 INTO x;
    FETCH cur2 INTO y;

    IF done THEN

      LEAVE read_loop;

    END IF;

    IF x < y THEN

      INSERT INTO tutorweb_ejemplos.c3 VALUES (x);

    ELSE

      INSERT INTO tutorweb_ejemplos.c3 VALUES (y);

    END IF;

  END LOOP;

  CLOSE cur1;
  CLOSE cur2;

END; //

DELIMITER ;

INSERT INTO c1 VALUES(5),(50),(500);

INSERT INTO c2 VALUES(10),(20),(30);

CALL p1;

SELECT * FROM c3;
+------+
| i    |
+------+
|    5 |
|   20 |
|   30 |
+------+


CREATE TABLE c1(i INT);

CREATE TABLE c2(i INT);

CREATE TABLE c3(i INT);

DELIMITER //

CREATE PROCEDURE p1()
BEGIN
  DECLARE done INT DEFAULT FALSE;
  DECLARE x, y INT;
  DECLARE cur1 CURSOR FOR SELECT i FROM tutorweb_ejemplos.c1;
  DECLARE cur2 CURSOR FOR SELECT i FROM tutorweb_ejemplos.c2;
  DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;

  OPEN cur1;
  OPEN cur2;

  read_loop: LOOP
    FETCH cur1 INTO x;
    FETCH cur2 INTO y;
    IF done THEN
      LEAVE read_loop;
    END IF;
    IF x < y THEN
      INSERT INTO tutorweb_ejemplos.c3 VALUES (x);
    ELSE
      INSERT INTO tutorweb_ejemplos.c3 VALUES (y);
    END IF;
  END LOOP;

  CLOSE cur1;
  CLOSE cur2;
END; //

DELIMITER ;

INSERT INTO c1 VALUES(5),(50),(500);

INSERT INTO c2 VALUES(10),(20),(30);

CALL p1;

SELECT * FROM c3;
+------+
| i    |
+------+
|    5 |
|   20 |
|   30 |
+------+


-- Change the delimiter
DELIMITER //
-- Create the stored procedure
CREATE OR REPLACE PROCEDURE FirstProc()
BEGIN
SELECT 1 AS OurResult;
END
//
-- Change back the delimiter
DELIMITER ;
-- Call the stored procedure
CALL FirstProc();
-- remove the stored procedure
DROP PROCEDURE FirstProc;