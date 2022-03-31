run: # build images and run all command in containers.
	@echo "\033[35mBoot Docker Container.\033[m" 
	docker-compose up -d --build
	docker-compose exec python3 bash

run-local:
	@echo "\033[35mBoot Docker Container On Local System.\033[m" 
	docker-compose up 

down: # stop and remove containers.
	@echo "\033[31mShut Down Docker Container.\033[m" 
	docker-compose down

restart: # restart containers.
	@echo "\033[32mRestart Docker Container.\033[m" 
	docker-compose restart
	docker-compose exec python3 bash

log: # show container's logs.
	docker-compose logs -f python3

check-container: # check running containers.
	docker-compose ps