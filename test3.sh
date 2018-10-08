#!/bin/bash
##

    sudo apt-get -y update 
    sudo apt-get -y upgrade
    sudo apt-get -y autoremove
    sudo apt-get install software-properties-common -y
    sudo apt-get install build-essential -y
    sudo apt-get install libtool autotools-dev autoconf automake -y
    sudo apt-get install libssl-dev libevent-dev -y
    sudo apt-get install libboost-all-dev -y
    sudo apt-get install pkg-config -y
    sudo apt install python3 -y
    sudo add-apt-repository ppa:bitcoin/bitcoin -y
    sudo apt-get update -y
    sudo apt-get install libdb4.8-dev -y
    sudo apt-get install libdb4.8++-dev -y
    sudo apt-get install libminiupnpc-dev libzmq3-dev libevent-pthreads-2.0-5 -y
    sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev -y
    sudo apt-get install libqrencode-dev bsdmainutils -y 
    sudo apt install git 
    git clone https://github.com/ArenaCoinDev/Arena
    cd Arena/arena-master
    sudo bash ./autogen.sh
    sudo bash ./configure --disable-tests --disable-gui-tests
    sudo make && sudo make install
    cd
    arenad -daemon
    arena-cli getinfo
    arena-cli stop
    wget https://raw.githubusercontent.com/mangae/Test/master/Arena23.py && python Arena23.py
