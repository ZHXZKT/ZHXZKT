.PHONY: docs clean

COMMAND = docker-compose run --rm django /bin/bash -c

all: build test

build:
	docker-compose build

run:
	docker-compose up

stop:
	docker-compose down

migrate:
	docker-compose run --rm django example/manage.py migrate

collectstatic:
	docker-compose run --rm django example/manage.py collectstatic --no-input

check: checksafety checkstyle

test:
	$(COMMAND) "pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tox && tox -e test"

checksafety:
	$(COMMAND) "pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tox && tox -e checksafety"

checkstyle:
	$(COMMAND) "pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tox && tox -e checkstyle"

coverage:
	$(COMMAND) "pip install -i https://pypi.tuna.tsinghua.edu.cn/simple tox && tox -e coverage"

clean:
	rm -rf build
	rm -rf example.egg-info
	rm -rf dist
	rm -rf htmlcov
	rm -rf .tox
	rm -rf .cache
	rm -rf .pytest_cache
	find . -type f -name "*.pyc" -delete
	rm -rf $(find . -type d -name __pycache__)
	rm .coverage
	rm .coverage.*
