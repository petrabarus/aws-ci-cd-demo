VENVBIN=./venv/bin
PYTHON=$(VENVBIN)/python
PIP=$(VENVBIN)/pip
PYTEST=$(VENVBIN)/py.test
PYLINT=$(VENVBIN)/pylint

.PHONY : clean

all: clean env test

env:
	virtualenv -p python3 venv
	$(PIP) install --upgrade pip
	$(PIP) install -r requirements.dev.txt

clean:
	find . -name "*.pyc" -exec rm -rf {} \;
	rm -rf venv
	rm -rf vendored

test:
	$(PYTEST) -s tests/
