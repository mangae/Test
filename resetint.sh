#!/bin/bash

dhclient -cf /etc/dhcp/dhclient6.conf -6 -P -v em1

sleep 10

ifdown em1 && ifup em1
