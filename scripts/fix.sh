#!/bin/bash

poetry run black .
poetry run pflake8 .
poetry run isort .
poetry run mypy --ignore-missing-imports .
poetry run ruff check .   # Lint all files in the current directory.
poetry run ruff format .  # Format all files in the current directory.