#!/bin/bash
if [ -d "build-x86" ]
then
  rm -rf build-x86
fi

mkdir build-x86

docker run --rm dockcross/linux-x86 > ./build-x86/dockcross-linux-x86
chmod +x ./build-x86/dockcross-linux-x86
./build-x86/dockcross-linux-x86 bash -c '
  cd build-x86 && \
  conan install .. && \
  cmake .. && \
  make
'
