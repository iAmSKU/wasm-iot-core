#go to the respective directory
echo "Entering into the directory..."
#cd ./src_1/
cd ./src_2/

#build wasm code
echo "Building the code..."
./build.sh

cd ..

#integrate and test wasm code
echo "Running intermediate server..."
go run server.go
