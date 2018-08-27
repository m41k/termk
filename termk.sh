#!/bin/sh

SERVER="https://raw.githubusercontent.com/m41k/termk/master/server"

case $1 in
 create)
  wget -qO- $(wget -qO- $SERVER)
 ;;
esac
