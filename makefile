include .env

perm:
	sudo chmod -R 777 docker/mysql/data
	sudo chmod -R 777 docker/nginx/logs

env:
	cp .env.example .env

create:
	sh .make_command/cp_env.sh ${APP_PROJECTS}
	docker compose up -d --build --force-recreate
	sleep 5
	PASS=${DB_PASSWORD} sh .make_command/db.sh ${APP_PROJECTS}

run:
	docker compose up -d

down:
	docker compose down -v
