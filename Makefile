S=1/init.sql
exec:
	docker-compose exec mysql bash scripts/run.sh scripts/$S

init:down up
	@echo "Starting Server ..."

up:
	docker-compose up -d

down:
	docker-compose down --volumes --remove-orphans

.PHONEY: run init up down
