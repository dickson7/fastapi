build:
	docker-compose build 
	docker-compose up -d
	docker-compose run app alembic upgrade head

start:
	docker-compose up -d

stop:
	docker stop

clean:
	docker rmi $(docker images -q --filter "dangling=true")

