#!/bin/bash
logo="$(tput setaf 1)
  ___       _            _     _             
 |_ _|_ __ | |_ ___ _ __| |   (_)___ _ __  
  | || '_ \| __/ _ \ '__| |   | / __| '_ \  
  | || | | | ||  __/ |  | |___| \__ \ |_) |  
 |___|_| |_|\__\___|_|  |_____|_|___/ .__/   
  $(tput setaf 3) Welcome to the InterLisp System $(tput setaf 1) | |     
  $(tput setaf 3) ------------------------------- $(tput setaf 1) |_|    

$(tput sgr0)"

if [ `whoami` != "root" ]; then
  echo "$logo"
  echo "Run as root to update your MOTD"
else
  echo "$logo" > /etc/motd.tail
  echo "$logo"
  echo "Updated Logo"
fi

