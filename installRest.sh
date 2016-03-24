#!/bin/bash
if [[ "$(whoami)" != "root" ]]; then
    echo "you must be root to run, running as root... ";
    sudo bash -c "./$0";
    exit 0;
fi;
echo "downloading install files..."
wget cs.ecs.baylor.edu/~andersonau/
echo "extracting install files..."
tar -xf cpInstalls.tar.gz
for i in $(ls ./cpInstalls.tar.gz) do
    path=$(echo $i|sed 's/~/\//g')
    originalPath=$(pwd)
    echo "installing files to $path ..."
    mv $i $path;
    cd $path;
    tar -xf $i;
    cd $originalPath;
done