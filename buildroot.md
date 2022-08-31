**All this commands has to be run from the root of the repository.**

Build the docker image to run Buildroot:

```bash
docker build -t buildroot .
```

Run and connect to the Buildroot container:

```bash
docker run \
    --rm \
    --name build-v86 \
    -v $PWD/dist:/build \
    -v $PWD/custom:/custom \
    -ti \
    --platform linux/amd64 \
    --entrypoint "bash" \
    buildroot
```

In the container:

```bash
cp -r /custom/* .
cp /custom/.config .
```

Eventually tweak the configuration and save it back to the host:

```bash
make menuconfig
cp .config /custom/.config
```

Build the image and save it to the host:

```bash
make
cp /root/buildroot-2022.05.1/output/images/rootfs.iso9660 /build/linux.iso
```