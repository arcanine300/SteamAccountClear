# Clear Steam Account Cache
Simple script to remove local steam account data before switching to alt accounts, potentially helps with dissociating trust factor between CS2/CSGO accounts. Does not mitigate Valve HWID fingerprinting.

## Usage (Windows)
Run the Windows batch script to remove Windows registry keys associated with Steam and clear Steam userdata / appcache from the `C:\Program Files (x86)\Steam\` directory.

The Windows batch script assumes your steam install is located at: `C:\Program Files (x86)\Steam\`, if you have installed Steam in a different directory modify the script and paste in your install location

## Usage (Linux) 
Execute the Linux shell script in terminal, requires sudo permissions to ensure the steam process is killed if running. Add execution permissions to the script with `chmod +x ClearSteamCache.sh` if needed.

The Linux Shell script assumes your steam install is located at: `~/.local/share/Steam/`, if you have installed Steam in a different directory modify the script and paste in your install location

To my knowledge there is no Windows registry equivalent on linux where steam stores userdata keys so the script only cleans the Steam install directory userdata.
