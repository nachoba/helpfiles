#!/bin/bash

logo="$(tput setaf 4)
           _/      _/  _/_/_/_/_/    _/_/_/_/    _/   _/  _/_/_/_/  _/        _/         _/   _/ 
           _/      _/  _/      _/  _/       _/   _/  _/   _/        _/        _/          _/   _/ 
           _/_/_/_/_/  _/      _/  _/_/_/        _/_/     _/        _/        _/           _/   _/   _/_/_/ 
           _/      _/  _/_/_/_/_/        _/_/_/  _/ _/    _/_/_/    _/        _/           _/  _/_/  _/_/_/ 
           _/      _/  _/      _/   _/       _/  _/  _/   _/        _/        _/          _/  _/  _/ 
           _/      _/  _/      _/    _/_/_/_/    _/   _/  _/_/_/_/  _/_/_/_/  _/_/_/_/   _/  _/    _/ 


$(tput sgr0)"

if [ `whoami` != "root" ]; then
  echo "$logo"
  echo "Run as root to update your motd."
else
  echo "$logo" > /etc/motd.tail
  /etc/init.d/bootlogs
  echo "Updated MOTD. Log in to see the new logo."
fi
