install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=test_source_code.py
	# python -m pytest --nbval notebook.ipynb


lint:
	pylint --disable=R,C source_code.py

all: install lint test