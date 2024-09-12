cd Pangolin
echo "install" >> ./.gitignore
mkdir install
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -GNinja -DCMAKE_INSTALL_PREFIX=../install
ninja && ninja install && ninja clean
cd ../..