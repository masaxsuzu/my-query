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
	sqlformat --inputFile $S --outputFile $S

.PHONEY: run init up down fmt
