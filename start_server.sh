#!/bin/bash
git pull
nohup docker-compose build && docker-compose up -d &