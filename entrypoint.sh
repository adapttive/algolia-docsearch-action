#!/bin/bash

cd /root
ls ./

sudo chmod 777 -R /github/home/.cache/pip

pipenv run python --version

pipenv run pip freeze

pipenv run python -m src.index