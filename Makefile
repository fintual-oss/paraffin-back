dev:
	docker compose up

down:
	docker compose down

test:
	docker compose exec web rspec

lint:
	docker compose exec web rubocop

debug:
	docker attach $$(docker-compose ps -q web)
