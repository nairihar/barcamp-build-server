rm -rf components

mkdir components

cd components

git clone https://github.com/nairihar/barcamp-server-2.git

git clone https://github.com/nairihar/barcamp-server-1.git

cd ..

rm -rf sources.tar.gz

tar --exclude=".git/" -cvf source.tar.gz components scripts
