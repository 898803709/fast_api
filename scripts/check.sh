
#!/bin/sh

CHECK="all"

if [ "$#" -ne 0 ]; then
  CHECK="$1"
fi

case $CHECK in
  "black")
    poetry run black --diff .
    ;;
  "flake8")
    poetry run flake8 .
    ;;
  "isort")
    poetry run isort --check-only .
    ;;
  "pytest")
    poetry run pytest
    ;;
  *)
    poetry run black --diff .
    poetry run flake8 .
    poetry run isort --check-only .
    poetry run mypy --ignore-missing-imports .
    poetry run pytest
    ;;
esac
