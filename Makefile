IM_NAME=lmwafer/realsense-ready
IM_TAG=2.0-ubuntu18.04
CONT_NAME=realsense-2-container # You will need to apply the exact same name to container_name in orb-container/docker-compose.yml

default: up enter


up:
	sudo xhost +local:root && sudo docker-compose up -d

enter:
	clear && docker exec -it ${CONT_NAME} bash

down:
	docker-compose down

build:
	sudo docker build -t ${IM_NAME}:${IM_TAG} .