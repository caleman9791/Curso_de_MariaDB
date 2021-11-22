



CREATE [OR REPLACE] {DATABASE | SCHEMA} [IF NOT EXISTS] db_name
    [create_specification] ...

create_specification:
    [DEFAULT] CHARACTER SET [=] charset_name
  | [DEFAULT] COLLATE [=] collation_name
  | COMMENT [=] 'comment'

  

-- MariaDB comenzando con 10.1.3

-- La cláusula OR REPLACE se agregó en MariaDB 10.1.3

DROP DATABASE IF EXISTS db_name;
CREATE DATABASE db_name ...;
