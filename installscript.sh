#!/bin/bash
##
##
##
RED='\033[1;31m'
GREEN='\033[0;32m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
YELLOW='\033[1;33m'
BROWN='\033[0;34m'
NC='\033[0m' # No Color

echo && echo
echo "*******************v1.3.0******************"
echo "***************SagaCoin COIN***************"
echo "*****************MAIN MENU*****************"
echo "*********http://www.sagacoin.net/**********"
echo "*******************************************"

echo -e "Installing Dependencies"
echo -e "--------------------------------------------------------------------------------------------------------------------------"
#Asking for permission
echo -e "${YELLOW}Do you want to install all needed dependencies (no if you did it before, yes if you are installing your first node)? [y/n]${NC}"
read DOSETUP
# echo ${DOSETUP}
if [[ ${DOSETUP,,} =~ "y" ]] ; then
	sudo apt-get update
	sudo apt-get -y upgrade
	sudo apt-get -y dist-upgrade
	sudo apt-get install build-essential libssl-dev libdb++-dev libboost-all-dev libqrencode-dev -y
	sudo apt-get install libminiupnpc-dev mesa-common-dev libgmp-dev libgl1-mesa-dev -y
	sudo apt-get install libqt5gui5 libqt5core5a libqt5dbus5 libqt5printsupport5 -y
	
	sudo sh -c 'echo "/usr/local/lib" >> /etc/ld.so.conf.d/local.conf'
	sudo ldconfig
	sudo apt-get install qt5-default
	
	echo -e "Dependencies Installed, Now Downloading wallet"
	echo -e "--------------------------------------------------------------------------------------------------------------------------"

	#Checking OS version
	if [[ $(lsb_release -d) == *16.04* ]]; then
		echo -e "Version Found Ubuntu 16.04"
		cd ~
		mkdir sagacoinwallet
		cd sagacoinwallet
		wget https://www.sagacoinpool.com/dl/u1604/sagacoind
		sudo cp sagacoind /usr/local/bin
		sudo chmod +x /usr/local/bin/sagacoind
		echo -e "Wallet Downloaded. Now running the Node"
		sudo sagacoind -deamon
	elif [[ $(lsb_release -d) == *14.04* ]]; then
		echo -e "Version Found Ubuntu 14.04"
		cd ~
		mkdir sagacoinwallet
		cd sagacoinwallet
		wget https://www.sagacoinpool.com/dl/u1404/sagacoind
		sudo cp sagacoind /usr/local/bin
		sudo chmod +x /usr/local/bin/sagacoind
		echo -e "Wallet Downloaded. Now running the Node"
		sudo sagacoind -deamon
	elif [[ $(lsb_release -d) == *18.04* ]]; then
		echo -e "Version Found Ubuntu 18.04"
		cd ~
		mkdir sagacoinwallet
		cd sagacoinwallet
		wget https://www.sagacoinpool.com/dl/u1804/sagacoind
		sudo cp sagacoind /usr/local/bin
		sudo chmod +x /usr/local/bin/sagacoind
		echo -e "Wallet Downloaded. Now running the Node"
		sudo sagacoind -deamon
	elif [[ $(lsb_release -d) == *18.10* ]]; then
		echo -e "Version Found Ubuntu 18.10"
		cd ~
		mkdir sagacoinwallet
		cd sagacoinwallet
		wget https://www.sagacoinpool.com/dl/u1810/sagacoind
		sudo cp sagacoind /usr/local/bin
		sudo chmod +x /usr/local/bin/sagacoind
		echo -e "Wallet Downloaded. Now running the Node"
		sudo sagacoind -deamon
	fi
	
	sudo chmod +x /usr/local/bin/sagacoind
	
	exit 0
fi





