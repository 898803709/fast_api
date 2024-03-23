#!/bin/bash

black .
pflake8 .
isort .
mypy --ignore-missing-imports .
ruff check .   # Lint all files in the current directory.
ruff format .  # Format all files in the current directory.