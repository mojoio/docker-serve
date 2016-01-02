#!/usr/bin/env bash
docker build --no-cache -t mojoserveimg:latest .
docker stop mojoserve
docker rm $(docker ps -q -f status=exited)
docker run -d -e VIRTUAL_HOST=default.com -e CERT_NAME=server --name mojoserve mojoserveimg:latest
docker rmi $(docker images -f "dangling=true" -q)