#!/usr/bin/env sh

cd components

cd barcamp-server-1
npm install --unsafe-perm
cd ..

cd barcamp-server-2
npm install --unsafe-perm
cd ..

tar -zcf ../package.tar.gz ./
