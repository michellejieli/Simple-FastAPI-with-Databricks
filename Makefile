install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv test_hello.py

format:
	black *.py 

lint:
	pylint --disable=R, hello.py

all: install lint test format