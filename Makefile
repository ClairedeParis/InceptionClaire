NAME = Inception


all: $(NAME)

$(NAME):
	mkdir -p /home/cdesombr/data/wp-files
	docker-compose -f srcs/docker-compose.yml up --build -d

stop: 
	docker-compose -f srcs/docker-compose.yml stop

down: 	stop
	docker-compose -f srcs/docker-compose.yml down

clean:  down 
	sudo rm -rf /home/cdesombr/data/
#	sudo rm -rf /home/cdsombr/data/



## est-ce utile ?
linux:
	@ echo "127.0.0.1 cdesombr.42.fr" >> /etc/hosts

.PHONY: linux stop clean prune reload all


