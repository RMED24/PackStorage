read -p "This will install Ryujinx and setup the firmware/keys necessary. This could take some time and isn't 100% finished yet. Continue? (Ctrl+C to cancel)"
printf "Launching Pinejinx"

 bash -c "$(curl -s https://raw.githubusercontent.com/edisionnano/Pine-jinx/main/pinejinx.sh)"

printf "Pinejinx install script finished, installing firmware"

mkdir ~/.config/Ryujinx/bis/system/Contents
cd ~/.config/Ryujinx/bis/system/Contents
curl -L "https://github.com/RMED24/PackStorage/releases/download/FW/registered.tar.gz" > registered.tar.gz
tar -xf registered.tar.gz

mkdir ~/.config/Ryujinx/system/
cd ~/.config/Ryujinx/system/
curl -L "https://github.com/RMED24/PackStorage/releases/download/FW/prod.keys"

read -p "Setup complete! Have a nice day. If there's any issues, report to RMED24" > prod.keys
