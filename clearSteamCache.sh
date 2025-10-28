#!/usr/bin/env bash

sudo pkill steam
echo "killing steam process"
sleep 3

echo "removing steam account data"
sudo rm -r ~/.local/share/Steam/appcache
sudo rm -r ~/.local/share/Steam/config
sudo rm -r ~/.local/share/Steam/userdata
sudo rm -r ~/.local/share/Steam/logs
sudo rm -r ~/.local/share/Steam/dumps
sudo rm ~/.local/share/Steam/steamclient.dll
sudo rm ~/.local/share/Steam/steamclient64.dll
sudo rm ~/.local/share/Steam/.crash

read -p "Press any key to exit"
