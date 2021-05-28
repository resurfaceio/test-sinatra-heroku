PROJECT_NAME=sinatra

start:
	@docker stop resurface || true
	@docker build -t test-sinatra --no-cache .
	@docker-compose up --detach

stop:
	@docker-compose stop
	@docker-compose down --volumes
	@docker image rmi -f test-sinatra

bash:
	@docker exec -it sinatra bash

logs:
	@docker logs -f sinatra

ping:
	@curl 'http://localhost/' -H 'Content-Type: application/json' --data-binary '{"message":"hi!"}'

restart:
	@docker-compose stop
	@docker-compose up --detach

test:
	@docker exec -it sinatra python3 test.py