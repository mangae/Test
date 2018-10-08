#!/bin/bash
# This script will install Arena Coin masternode from https://github.com/ArenaCoinDev/Arena Repository on to an Ubuntu16.04 VPS
# Adds swap and runs the wallet daemon (your first instance)
# to run multiple instances afterwards get guidance from the community (for now) 
# MUST RUN AS ROOT
######################################################################
# PLEASE REVIEW IT BEFORE YOUR RUN IT
######################################################################

clear
echo "This script will install Arena Coin masternode from https://github.com/ArenaCoinDev/Arena Repository on to an Ubuntu16.04 VPS"
echo "Script adds 4G of swap space and runs the wallet without any issues"
echo "This script must be run as root"
echo "Created by community member Mangae."
sleep 5

echo "Creating 4G of swap space and runs the wallet without any issues"
sleep 5

fallocate -l 4G /swapfile
chmod 600 /swapfile
mkswap /swapfile
swapon /swapfile
echo -e "/swapfile   none    swap    sw    0   0 \n" >> /etc/fstab

echo "Creating swap file completed"
sleep 2
clear

echo "Compiling/Installing Arena wallet dependencies"
sleep 2

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

echo "Dependencies installed"
sleep 2
clear

echo "Downloading repository and compiling wallet"
echo "Note: This process can take up to 30 min, time depends of your server capabilities"
sleep 5

    git clone https://github.com/ArenaCoinDev/Arena
    cd Arena/arena-master
    sudo bash ./autogen.sh
    sudo bash ./configure --disable-tests --disable-gui-tests
    sudo make && sudo make install
    cd
echo "Arena wallet compiled"
sleep 2
clear

echo "Downloading repository and compiling wallet"
sleep 5

    arenad -daemon
sleep 5
clear

echo "Next steps will be configuring of your arena.conf file."
sleep 5
	arena-cli masternode genkey
echo -n "Please copy and paste Masternode private key from above and press [ENTER]: "
read mnprivkey
echo -n "Please type in RPC username for RPC access and press [ENTER]: "
read usrnam
echo -n "Please type in long password for user created above and press [ENTER]: "
read usrpas
echo -e "rpcuser=$usrnam \nrpcpassword=$usrpas \nrpcallowip=127.0.0.1 \nrpcport=16151 \nport=16050 \nserver=1 \nlisten=1 \ndaemon=1 \nmasternode=1 \nmasternodeprivkey=$nmnprivkey \n" > ~/.arenacore/arena.conf
sleep 2
clear

echo "Starting Arena deamon and checking service."
sleep 5
	arenad -daemon
echo "Please wait...."
sleep 10
arena-cli getinfo

echo "Your Arena VPS is ready to be started as Masternode, please use Masternode private key for your local wallet masternode configuration."
echo "Once when masternode is started from your local wallet, you can check status at VPS side with following commands:"
echo " arena-cli masternode debug "
echo " arena-cli masternode status "
echo "You should get reply back (asternode succesfully started.)"
echo "Welcome to ARENA Team and enjoy your Arena masternode rewards...."
echo "For support please feel free to contact us at our Discord channel (https://discord.gg/w4vAYSe)....Mangae"
