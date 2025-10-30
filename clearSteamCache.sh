#!/usr/bin/env bash

sudo pkill steam
echo "killing steam process"
sleep 3


#Replace with your steam install directory location
SteamPath=~/.local/share/Steam

echo "removing steam account data"
rm -r $SteamPath/appcache
rm -r $SteamPath/config
rm -r $SteamPath/userdata
rm -r $SteamPath/logs
rm $SteamPath/legacycompat/Steam.dll
rm $SteamPath/steamclient.dll
rm $SteamPath/steamclient64.dll
rm $SteamPath/linux32/crashhandler.so
rm $SteamPath/linux32/steamclient.so
rm $SteamPath/linux64/crashhandler.so
rm $SteamPath/linux64/steamclient.so
rm ~/.steam/registry.vdf

read -p "Press any key to exit"
