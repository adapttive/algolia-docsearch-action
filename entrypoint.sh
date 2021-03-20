#!/bin/bash

pipenv run python --version

pipenv run pip freeze

pipenv run python -m src.index