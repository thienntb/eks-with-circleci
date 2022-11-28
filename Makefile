setup:
	python3 -m venv ~/.venv

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	#python -m pytest -vv --cov=myrepolib tests/*.py
	#python -m pytest --nbval notebook.ipynb
	pytest -s -v tests/

lint:
	hadolint Dockerfile
	flake8 hello_world/ tests/

security:
	safety check -r requirements.txt

all: install lint test