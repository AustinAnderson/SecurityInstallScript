#!/bin/bash
if [[ "$(whoami)" != "root" ]]; then
    echo "you must be root to run, running as root... ";
    sudo bash -c "./$0";
    exit 0;
fi;
echo "downloading install files..."
#wget cs.ecs.baylor.edu/~andersonau/cpInstalls.tar.gz
echo "extracting install files..."
#tar -xf cpInstalls.tar.gz
cd cpInstalls
for i in $(ls) ;do

    path=$(echo $i|sed 's/~/\//g')
    originalPath=$(pwd)
    echo "installing files to $path ..."
    mkdir $path;
    mv $i $path;
    cd $path;
    tar -xf $i;
    cd $originalPath;
done
