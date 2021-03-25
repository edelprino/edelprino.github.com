start:
	docker-compose up -d 

stop:
	docker-compose down

restart:
	make stop
	make start

shell:
	docker-compose run --rm jekyll sh

logs:
	docker-compose logs -f