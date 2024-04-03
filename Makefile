install:
	python -m pip install --upgrade pip && \
	python -m pip install -r requirements.txt

test:
	python -m pytest --cov=tests

lint:
	pylint --disable=R,C ./src/
	pylint --disable=R,C ./tests/

format:
	black src
	black --check src
	black tests
	black --check tests

clean:
	rm -rf __pycache__

all: clean install lint format test
