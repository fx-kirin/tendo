all: test

clean:
	rm -rf *.egg
	rm -rf __pycache__
	rm -rf .cache
	rm -rf .tox
	rm -rf */__pycache__
	rm -rf docs/_build

prepare:
	pip install --user -r requirements-dev.txt
	pip install --user -r requirements.txt

test: prepare
	python setup.py --version
	python setup.py --name
	tox
