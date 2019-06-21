#!/usr/bin/env sh

cd barcamp-server-1

npm start 2>&1 &

cd ..

cd barcamp-server-2

npm start 2>&1
