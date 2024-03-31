
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
    poetry run pflake8 .
    ;;
  "isort")
    poetry run isort --check-only .
    ;;
  *)
    poetry run black --diff .
    poetry run pflake8 .
    poetry run isort --check-only .
    poetry run mypy --ignore-missing-imports .
    ;;
esac
