#!/bin/sh
#------------------------------------------#
#                 Created by: Maik Alberto #
#                 maik.alberto@hotmail.com #
#                          github.com/m41k #
#------------------------------------------#
# API shell - TERMK - Instant Linux access #
#------------------------------------------#
clear
SERVER="https://raw.githubusercontent.com/m41k/termk/master/server"
case $1 in
 list)
   wget -qO- $(wget -qO- $SERVER)/?$1 | sed '/^$/d'
 ;;
 create)
   ID=$(wget -qO- $(wget -qO- $SERVER) | sed '/^$/d')
   wget -qO- $(wget -qO- $SERVER)/?$ID | sed '/^$/d'
   echo -n "Repeat the characters: "
   read DIG
   clear
   wget -qO- $(wget -qO- $SERVER)/?$ID:$DIG@$2 | sed '/^$/d'
 ;;
esac
