S=./scripts/1/init.sql
exec: fmt
	docker-compose exec mysql bash scripts/run.sh $S

init:down up
	@echo "Starting Server ..."

up:
	docker-compose up -d

down:
	docker-compose down --volumes --remove-orphans

fmt:
	sql-formatter $S -o $S

.PHONEY: run init up down fmt
