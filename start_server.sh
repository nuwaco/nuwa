#!/bin/bash
random=$RANDOM
echo `date` "--" $random "--deployed begin!!"
git pull
docker stop $(sudo docker ps -a -q) 
docker  rm $(sudo docker ps -a -q)
docker-compose build 
docker-compose up -d 
systemctl stop nginx
systemctl start nginx
echo `date` "--" $random "--deployed done!!"