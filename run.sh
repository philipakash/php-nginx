#!/bin/bash
cd php
docker build --no-cache -t example .
docker run -it -d --volume .:/var/www/html --network nginx --name example-sample example
cd ..
docker build --no-cache -t nginx .
docker run -it -d --volume ./configs:/etc/nginx/conf.d --publish 80:80 --network nginx --name nginx-sample nginx