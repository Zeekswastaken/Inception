all:
	./srcs/requirements/mariadb/tools/vols.sh
	@docker-compose -f ./srcs/docker-compose.yml build
re:
	@docker-compose -f ./srcs/docker-compose.yml build
up:
	@docker-compose -f ./srcs/docker-compose.yml up
down:
	@docker-compose -f ./srcs/docker-compose.yml down
fclean: down
	@docker system prune -a --force
	rm ~/vols