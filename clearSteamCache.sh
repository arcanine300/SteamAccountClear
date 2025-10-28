#!/usr/bin/env bash

sudo pkill steam
echo "killing steam process"
sleep 3

echo "removing steam account data"
rm -r ~/.local/share/Steam/appcache
rm -r ~/.local/share/Steam/config
rm -r ~/.local/share/Steam/userdata
rm -r ~/.local/share/Steam/logs
rm ~/.local/share/Steam/legacycompat/Steam.dll
rm ~/.local/share/Steam/steamclient.dll
rm ~/.local/share/Steam/steamclient64.dll
rm ~/.local/share/Steam/linux32/crashhandler.so
rm ~/.local/share/Steam/linux32/steamclient.so
rm ~/.local/share/Steam/linux64/crashhandler.so
rm ~/.local/share/Steam/linux64/steamclient.so

read -p "Press any key to exit"
