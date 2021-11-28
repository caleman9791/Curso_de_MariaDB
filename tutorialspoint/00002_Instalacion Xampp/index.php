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
         <div class="">
            Lorem ipsum, dolor sit amet consectetur adipisicing elit. Reprehenderit veritatis quod quibusdam, iure obcaecati, autem facere sunt amet, modi, unde omnis itaque. Doloribus molestiae ab enim eligendi nisi laudantium suscipit.
         </div>
         <div class="">
            <p>
               Bienvenido a una nueva entrada de blog donde aprenderás a instalar XAMPP lo cual trae incluido MariaDB. Puede que en la internet encuentres una gran cantidad de herramientas para trabajar con MariaDB. Sin embargo en mi blog intentaré usar las herramientas más sencillas e intuitivas para que logres crear aplicaciones web potentes. Por aquello de que serán comentarios negativos a cerca de las herramientas que usamos aquí. Permítame mencionar un refrán que se dice mucho en mi país "No es la flecha es el indio"
            </p>
            <p>
               ¡Comencemos! Para instalar XAMPP en Linux solo debes descargar el instalador e ir ar directorio donde los descargaste y abrir una terminal en ese mismo directorio. Entonces ejecutar los siguientes comandos
            </p>
            <p>
               Busca la versión de tu sistema operativo aquí https://www.apachefriends.org/es/download.html
            </p>
            <p>
               Si estas desde en Windows la instalación es supersencilla descargas e instalas como cualquier programa de esos donde sale una ventana de diálogo y listo, si es  así puede saltarte el paso que explico a continuación.
            </p>
            <div class="w3-panel w3-card-4 w3-light-grey">
               <p>
                  Primero cambia los permisos al instalador
               </p>
               <div class="w3-code jsHigh notranslate">
                  chmod 755 xampp-linux-*-installer.run
               </div>
            </div>
            <div class="w3-panel w3-card-4 w3-light-grey">
               <p>
                  Segundo ejecuta el instalador
               </p>
               <div class="w3-code jsHigh notranslate">
                  sudo ./xampp-linux-*-installer.run
               </div>
            </div>
            <p>
               Luego de esto aparecerá una ventana de diálogo para la instalación eliges las opciones por defecto y listo ya tienes MariaDB. Pero no solo tendrás MariaDB  si noque también tendrás la versión de PHP y Apache que seleccionaste en el paquete de instalación en conjunto con MariaDB. ¿Por qué instalar este paquete? Porque nos ahora una gran cantidad de tiempo y no queremos retrasos, lo que queremos es, hacer aplicaciones usando bases de datos, con interfaz de usuario y comenzar a dar servicios a empresas.
            </p>
            <div class="">
               <img alt="" src="instalador_Xampp.jpeg" style="border: 2px solid green;width: 100;"/>
            </div>
            <div class="w3-panel w3-card-4 w3-light-grey">
               <p>
                  Para ejecuta XAMPP en linux
               </p>
               <div class="w3-code jsHigh notranslate">
                  sudo /opt/lampp/lampp start
               </div>
            </div>
         </div>
      </div>
      <script src="https://www.w3schools.com/lib/w3codecolor.js">
      </script>
      <script>
         w3CodeColor();
      </script>
   </body>
</html>
