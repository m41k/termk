#!/bin/sh

SERVER="https://raw.githubusercontent.com/m41k/termk/master/server"

case $1 in
 create)
  wget -q0- $SERVER
 ;;
esac
