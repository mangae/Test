#!/bin/bash

echo OPCxMN7
sleep 1
opcx-cli -datadir=/root/.OPCoinX masternode status
echo OPCxMN3
sleep 1
opcx2-cli -datadir=/root/.OPCoinX2 masternode status
echo OPCxMN1
sleep 1
opcx3-cli -datadir=/root/.OPCoinX3 masternode status
echo OPCxMN2
sleep 1
opcx4-cli -datadir=/root/.OPCoinX4 masternode status
echo OPCxMN4
sleep 1
opcx5-cli -datadir=/root/.OPCoinX5 masternode status
echo OPCxMN5
sleep 1
opcx6-cli -datadir=/root/.OPCoinX6 masternode status
echo OPCxMN6
sleep 1
opcx7-cli -datadir=/root/.OPCoinX7 masternode status
