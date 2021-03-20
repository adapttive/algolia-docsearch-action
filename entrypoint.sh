#!/bin/bash

cd /root
ls ./

pipenv run pip freeze

pipenv run python -m src.index