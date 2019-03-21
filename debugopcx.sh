#!/bin/bash

echo OPCxMN7
sleep 1
opcx-cli -datadir=/root/.OPCoinX masternode debug
echo OPCxMN3
sleep 1
opcx2-cli -datadir=/root/.OPCoinX2 masternode debug
echo OPCxMN1
sleep 1
opcx3-cli -datadir=/root/.OPCoinX3 masternode debug
echo OPCxMN2
sleep 1
opcx4-cli -datadir=/root/.OPCoinX4 masternode debug
echo OPCxMN4
sleep 1
opcx5-cli -datadir=/root/.OPCoinX5 masternode debug
echo OPCxMN5
sleep 1
opcx6-cli -datadir=/root/.OPCoinX6 masternode debug
echo OPCxMN6
sleep 1
opcx7-cli -datadir=/root/.OPCoinX7 masternode debug
