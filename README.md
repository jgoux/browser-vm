**All this commands has to be run from the root of the repository.**

Run the Buildroot container:

```bash
./build.sh
```

In the container, copy the configuration files from the host:

```bash
cp -r /pg-wasm/* /pg-wasm/.config .
```

Eventually tweak the configuration and save it back to the host:

```bash
make menuconfig
cp .config /pg-wasm/.config
```

Build the image and save it to the host:

```bash
make
```