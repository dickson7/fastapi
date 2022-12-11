# fastapi
Desarrollo de API con FastAPI, SQLAlchemy, Alembic, PostgreSQL, Uvicorn y Docker. Construcción de una API con FastAPI,  usando FastAPI con Uvicorn (Get and Post Data), SQLAlchemy + Alembic para gestionar migraciones, PostgreSQL + PGAdmin todo desplegado en Docker/Docker-Compose.



# instalacion

pip install fastapi fastapi-sqlalchemy pydantic alembic psycopg2 uvicorn python-dotenv

docker-compose run app alembic revision --autogenerate -m "New Migration" 
docker-compose run app alembic upgrade head

docker-compose build 
docker-compose up