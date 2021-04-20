# Entorno PHP + MYSQL + WebServer en Docker

Para usarlo debes tener instalado Docker previamente

---

### Crea tu entorno

1. Ve tu carpeta de trabajo
    ```
    $ cd Documents/dev/projects
    ```
2. Clona el entorno de github y dale un nombre a tu carpeta
    ```
    $ git clone https://github.com/adranuz/php-env-docker.git php-env
    ```
3. Entra en la carpeta del proyecto
    ```
    $ cd php-env
    ```
4. Cambia los puertos a tu conveniencia en el docker-compose.yml
5. Corre el entorno
    ```
    $ docker-compose up -d
    ```

---

### Agregar un proyecto


1. Mueve a la carpeta src
    ```
    $ cd src
    ```
2. Clona tu proyecto en src
    ```
    $ git clone https://github.com/laravel/laravel.git .
    ```
2. Instala las dependencias de composer mediante docker
    ```
    $ docker-compose exec php composer install --ignore-platform-reqs
    ```
3. Si es necesario da permisos de supero usuario a esta carpeta
    ```
    $ sudo chown -R $USER:$USER ~/
    ```
4. Copia y renombra el archivo .env.example => .env
5. Abre el navegador en el puerto declarado en el docker-compose.yml para Nginx
6. Regresa al root de tu proyecto
    ```
    $ cd ...
    ```
7. Agrega el app key
    ```
    $ docker-compose exec php php artisan key:generate
    ```

---

### Configuraciones de env para la base de datos

1. En el archivo docker-compose.yml vienen declaradas las configuraciones de la db, las puedes cambiar si gustas. Las que deje por default son: 
    ```
    container_name: mysql
    environment: 
      MYSQL_DATABASE: 'homestead'
      MYSQL_USER: 'homestead'
      MYSQL_PASSWORD: 'secret'
      MYSQL_ROOT_PASSWORD: 'secret.root'
    ```
2. Cambia si es qe lo deseas esta configuracion y vuelve a correr el docker-compose
3. Conecta conecta e importa tu DB
4. Cambia la configuracion de tus variables de entorno a las de este archivo
    ```
    DB_CONNECTION=mysql
    DB_HOST=mysql
    DB_PORT=3306
    DB_DATABASE=homestead
    DB_USERNAME=root
    DB_PASSWORD=secret.root
    ```
5. Genera la clave del proyecto y copia el archivo .env
    ```
    $ docker-compose exec php php artisan key:generate
    ```
6. Corre el comando para guardar la cache
    ```
    $ docker-compose exec php php artisan config:cache
    ```
7. Genera la clave del proyecto y copia el archivo .env
    ```
    $ docker-compose exec php php artisan migrate
    ```

---

### Extra
Puedes llegar a necesitar algunos comandos para llevar a la vida a tu proyecto
