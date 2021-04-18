### Cosas que debes tener antes

- Docker


### Crea tu entorno

1. Ve tu carpeta de trabajo
`$ cd Documents/dev/projects`
2. Clona el entorno de github y dale un nombre a tu carpeta
`$ git clone https://github.com/adranuz/php-env-docker.git php-project`


### Agregar un proyecto

1. Muevete a la carpeta src
`$ cd src`
2. Clona tu proyecto aqui
`$ git clone https://github.com/laravel/laravel.git .`
3. Instala las dependencias de composer mediante docker
`$ docker run --rm -v $(pwd):/app composer install`
4. Si es necesario da permisos de supero usuario a esta carpeta
`$ sudo chown -R $USER:$USER ~./`
5. Copia y renombra el archivo .env.example => .env

