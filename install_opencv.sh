mkdir opencv
cd opencv
wget -O opencv.zip https://github.com/opencv/opencv/archive/4.x.zip
unzip opencv.zip && rm opencv.zip
mkdir install
mkdir build
cd build
cmake -GNinja -DCMAKE_INSTALL_PREFIX=../install ../opencv-4.x && \
ninja && ninja install && ninja clean
cd ../..