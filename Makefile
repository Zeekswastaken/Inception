re:
	@docker-compose -f ./srcs/docker-compose.yml build --no-cache
up:
	@docker-compose -f ./srcs/docker-compose.yml up
down:
	@docker-compose -f ./srcs/docker-compose.yml down

clean:
	@docker ps -aq | xargs docker rm -fv && docker volume ls -q | xargs docker volume rm 

fclean: down
	@docker ps -aq | xargs docker rm -fv && docker volume ls -q | xargs docker volume rm 