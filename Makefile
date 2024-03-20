
DOCKER_IMAGE_NAME = mlops_kaggle
DOCKER_RUN_CMD = docker run -it --rm $(DOCKER_IMAGE_NAME)

.DEFAULT_GOAL := help

build:
	docker build -t $(DOCKER_IMAGE_NAME) .

run:
	$(DOCKER_RUN_CMD)

train:
	$(DOCKER_RUN_CMD) python model.ipynb

test:
	$(DOCKER_RUN_CMD) pytest

clean:
	rm -rf __pycache__ .pytest_cache

install:
	pip install -r requirements.txt

update_requirements:
	pip freeze > requirements.txt
