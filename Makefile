SHELL := /bin/bash
export PATH := $(shell pwd)/bin:$(PATH)
export PYTHONPATH := $(shell pwd):$(PYTHONPATH)
export WORKON_HOME="~/python-dev/envs"

.PHONY: install clean-pyc clean-virtualenv

install: clean-pyc ./venv ./projects

./venv:
	virtualenv venv

./projects:
	mkdir projects

clean-pyc:
	find . -name '*.pyc' -delete
	find . -name '*.pyo' -delete
	find . -name '*~' -delete

clean-virtualenv:
	rm -r ./venv
