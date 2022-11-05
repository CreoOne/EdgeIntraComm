docker build -t edgeintracomm --platform=wasi/wasm32 .
docker run --platform=wasi/wasm32 --runtime=io.containerd.wasmedge.v1 edgeintracomm