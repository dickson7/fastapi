build:
	docker-compose build 
	docker-compose up -d
	sleep 30
	docker-compose run app alembic upgrade head

start:
	docker-compose up -d

stop:
	docker stop app pgadmin postgresql_db

clean:
	docker rmi $(docker images -q --filter "dangling=true")

