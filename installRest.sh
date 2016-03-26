#!/bin/bash
if [[ "$(whoami)" != "root" ]]; then
    echo "you must be root to run, running as root... ";
    sudo bash -c "./$0";
    exit 0;
fi;
apt-get install libssl-dev
sed -i 's/vivid/wily/g' /etc/apt/sources.list
apt-get update
apt-get install libboost-all-dev
exit 0;
