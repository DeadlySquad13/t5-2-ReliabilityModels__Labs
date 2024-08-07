ifneq (,$(wildcard ./.env.dev))
    include .env.dev
    export
endif

run:
	python src/lab1/main.py

install: requirements.txt
	pip install -r requirements.txt

install-dev: requirements.txt requirements_dev.txt 
	make install
	pip install -e .

install-dev-ju: requirements.txt 
	make install-dev
	pip install -r requirements_dev_ju.txt

install-dev-ju-nvim: requirements.txt
	make install-dev-ju
	pip install -r requirements_dev_ju_nvim.txt

build-image:
	docker build . -t ${IMAGE_NAME}

start:
	docker run --name "${CONTAINER_NAME}" --detach --rm "${IMAGE_NAME}"

start-browser:
	docker run --name "${CONTAINER_NAME}" --detach -p 8888:8888 --rm "${IMAGE_NAME}" -browser

lint-check:
	docker exec "${CONTAINER_NAME}" pixi run --environment dev lint-check

format-check:
	docker exec "${CONTAINER_NAME}" pixi run --environment dev format-check

types-check:
	docker exec "${CONTAINER_NAME}" pixi run --environment dev types-check

order-imports-check:
	docker exec "${CONTAINER_NAME}" pixi run --environment dev order-imports-check

connect:
	docker run --name ${CONTAINER_NAME} -it --rm ${IMAGE_NAME} -shell

stop:
	docker stop "${CONTAINER_NAME}"

rm-all-containers:
	docker rm $(docker ps --quiet --all)
regenerate_requirements: src
	pigar generate src
