# reference: https://github.com/golang/go/wiki/WebAssembly#getting-started
#go mod init main.go
#go mod tidy
mkdir -p output
GOOS=js GOARCH=wasm go build -o main.wasm

cp "$(go env GOROOT)/misc/wasm/wasm_exec.js" ./output
mv main.wasm ./output
cp index.html ./output
