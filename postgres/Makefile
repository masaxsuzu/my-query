S=./scripts/1.sql

run: init ef
	dotnet run --project src/entry/
exec:fmt
	docker-compose exec postgres bash scripts/run.sh $S

init:down up
	@echo "Starting Server ..."

up:
	docker-compose up -d

down:
	docker-compose down --volumes --remove-orphans

fmt:
	sql-formatter $S -o $S
	sed -i -e 's/! =/!=/g' -e 's/< =/<=/g' -e 's/@ @ /@@/g' -e 's/\ G/\G/g' -e 's/¥ /¥/g' $S

ef:
	rm src/contexts/*.cs
	dotnet ef dbcontext scaffold "Host=localhost;Database=db;Username=root;Password=root" Npgsql.EntityFrameworkCore.PostgreSQL --project src/contexts/

.PHONEY: init up down fmt ef
