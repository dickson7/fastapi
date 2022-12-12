# Books

Una API web utilizando el framework FastAPI. La API tiene puntos finales que permiten a los clientes añadir libros y autores, y recuperar listas de libros y autores. La API utiliza una base de datos para almacenar los libros y autores. La aplicación también utiliza el paquete dotenv para cargar variables de entorno desde un archivo llamado .env.

# Fastapi y PostgreSQL

Desarrollo de API con FastAPI, SQLAlchemy, Alembic, PostgreSQL, Uvicorn y Docker. Construcción de una API con FastAPI,  usando FastAPI con Uvicorn (Get and Post Data), SQLAlchemy + Alembic para gestionar migraciones, PostgreSQL + PGAdmin todo desplegado en Docker/Docker-Compose.


# Instalacion

pip install fastapi fastapi-sqlalchemy pydantic alembic psycopg2 uvicorn python-dotenv

docker-compose run app alembic revision --autogenerate -m "New Migration" 
docker-compose run app alembic upgrade head

docker-compose build 
docker-compose up

# Docker


`make build`

Se utiliza para construir las imágenes de contenedor de Docker definidas en un archivo docker-compose.yml. Este comando lee el archivo de configuración y construye las imágenes de contenedor necesarias para el proyecto.

Docker-compose up, se utiliza para iniciar y ejecutar los contenedores de Docker que se han construido con el comando docker-compose build. La bandera -d indica que se deben ejecutar los contenedores en segundo plano, lo que permite usar otros comandos en la consola mientras se ejecutan los contenedores.

docker-compose run, se utiliza para ejecutar un comando dentro de un contenedor de Docker específico. En este caso, el comando alembic upgrade head se ejecuta dentro del contenedor app, lo que actualiza la base de datos del proyecto.

` make start `

La regla start del makefile es similar a la regla build, pero solo ejecuta el comando docker-compose up para iniciar y ejecutar los contenedores en segundo plano. Esta regla es útil cuando se quiere iniciar los contenedores sin tener que volver a construirlos.


`make stop`

Detiene los contenedores 