
#!/bin/sh

CHECK="all"

if [ "$#" -ne 0 ]; then
  CHECK="$1"
fi

case $CHECK in
  "black")
    echo "Pythonコードスタイルのチェック中(black)..."
    poetry run black --diff .
    ;;
  "flake8")
    echo "Pythonコードスタイルのチェック中(flake8)..."
    poetry run pflake8 .
    ;;
  "isort")
    echo "Pythonコードスタイルのチェック中(isort)..."
    poetry run isort --check-only .
    ;;
  "mypy")
    echo "Pythonの型チェック中(mypy)..."
    poetry run mypy --ignore-missing-imports .
    ;;
  *)
    echo "Pythonコードスタイルのチェック中(black)..."
    poetry run black --diff .
    echo "Pythonコードスタイルのチェック中(flake8)..."
    poetry run pflake8 .
    echo "Pythonコードスタイルのチェック中(isort)..."
    poetry run isort --check-only .
    echo "Pythonの型チェック中(mypy)..."
    poetry run mypy --ignore-missing-imports .
    ;;
esac
