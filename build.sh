docker build -t buildroot .

docker run \
    --rm \
    --name build-v86 \
    -v $PWD/build:/build \
    -v $PWD/pg-wasm:/pg-wasm \
    -ti \
    --platform linux/amd64 \
    buildroot