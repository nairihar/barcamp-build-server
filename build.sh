./scripts/pull-components.sh && \

docker build --build-arg npm_token=1 -t build-img -f Dockerfile . && \

(docker rm build-cont; exit 0) && \

docker create --name build-cont build-img && \

echo "...Build container created" && \


mytmpdir=`mktemp -d 2>/dev/null || mktemp -d -t 'mytmpdir'` && \

cp -r server/* "$mytmpdir/" && \

docker cp "build-cont:/usr/local/barcamp/package.tar.gz" "$mytmpdir/" && \

cd "$mytmpdir/" && \

echo "...Created temp dir $mytmpdir" && \


docker build --tag barcamp . && \

echo "Build complete, exit value: $?"
