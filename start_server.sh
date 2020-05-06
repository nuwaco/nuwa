#!/bin/bash
git pull
docker stop $(sudo docker ps -a -q) 
docker  rm $(sudo docker ps -a -q)
nohup docker-compose build && docker-compose up -d &