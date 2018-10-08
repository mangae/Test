echo "Next steps will be configuring of your arena.conf file."
sleep 5

echo -n "Please type in RPC username for RPC access and press [ENTER]: "
read usrnam
echo -n "Please type in long password for user created above and press [ENTER]: "
read usrpas
echo -e "rpcuser=$usrnam \nrpcpassword=$usrpas \nrpcallowip=127.0.0.1 \nrpcport=16151 \nport=16050 \nserver=1 \nlisten=1 \ndaemon=1 \naddnode=144.202.103.0:16050 \naddnode=149.28.195.72:16050 \naddnode=195.154.235.48:16050 \naddnode=188.127.115.91:16050 \n" > ~/.arenacore/arena.conf
sleep 2
clear
	arenad -daemon
sleep 5
	arena-cli masternode genkey
read mnprivkey
echo -e "masternodeprivkey=$mnprivkey \nmasternode=1 \n" >> /.arenacore/arena.conf
	
	arena-cli stop	

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
