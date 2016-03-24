#!/bin/bash
if [[ "$(whoami)" != "root" ]]; then
    echo "you must be root to run, running as root... ";
    sudo bash -c "./installAll.sh";
    exit 0;
fi;
echo "downloading cmake..."
wget https://cmake.org/files/v3.5/cmake-3.5.0.tar.gz
echo "extracting cmake tar..."
tar -xf ./cmake-3.5.0.tar.gz
echo "installing cmake..."
cd cmake-3.5.0
./bootstrap
make
make install
