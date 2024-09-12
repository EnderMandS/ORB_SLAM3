if [ -n "$1" ]
then
    echo "Build with cmake command $1"
fi

# DBoW2
echo "Configuring and building Thirdparty/DBoW2 ..."
cd Thirdparty/DBoW2
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -GNinja $1 && ninja

# g2o
echo "Configuring and building Thirdparty/g2o ..."
cd ../../g2o
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -GNinja $1 && ninja

# Sophus
echo "Configuring and building Thirdparty/Sophus ..."
cd ../../Sophus
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -GNinja $1 && ninja

# vocabulary
echo "Uncompress vocabulary ..."
cd ../../../
cd Vocabulary
tar -xf ORBvoc.txt.tar.gz
cd ..

echo "Configuring and building ORB_SLAM3 ..."
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release -GNinja $1 && ninja
