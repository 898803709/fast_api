# fast_api

## poetryによるPython環境のセットアップ

```
docker-compose run \
  --entrypoint "poetry init \
    --name demo-app \
    --dependency fastapi \
    --dependency uvicorn[standard]" \
  demo-app
```

## fast_apiのインストる
```
docker-compose run --entrypoint "poetry install --no-root" demo-app
```