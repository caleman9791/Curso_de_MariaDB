-- Devuelve la longitud del argumento de cadena dado, 
-- medido en caracteres. Un carácter multi-byte cuenta 
-- como un solo carácter. Esto significa que para una 
-- cadena que contiene cinco caracteres de dos bytes, 
-- longitud (o octet_length () en modo de oracle) 
-- devuelve 10, mientras que las devoluciones de 
-- Char_length () 5. Si el argumento es nulo, devuelve nulo.

-- Si el argumento no es un valor de cadena, se convierte en una cadena.

-- Es sinónimo de la función Caracter_length ().

SELECT CHAR_LENGTH("SQL Tutorial") AS LengthOfString; 

+---------------------------------+
| LengthOfString                  |
+---------------------------------+
| 12                              |
+---------------------------------+