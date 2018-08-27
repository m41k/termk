#!/bin/sh
clear
SERVER="https://raw.githubusercontent.com/m41k/termk/master/server"
case $1 in
 create)
   ID=$(wget -qO- $(wget -qO- $SERVER) | sed '/^$/d')
   wget -qO- $(wget -qO- $SERVER)/?$ID | sed '/^$/d'
   echo -n "Enter captcha: "
   read DIG
   clear
   wget -qO- $(wget -qO- $SERVER)/?$ID:$DIG | sed '/^$/d'
 ;;
esac
