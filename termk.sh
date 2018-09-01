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
 list | -l)
   wget -qO- $(wget -qO- $SERVER)/?$1 | sed '/^$/d'
 ;;
 create | -c)
   if [ $2 -z ]; then
    echo "Usage: $0 create [DISTRO]"
    exit 1
   fi
   ID=$(wget -qO- $(wget -qO- $SERVER) | sed '/^$/d')
   wget -qO- $(wget -qO- $SERVER)/?$ID | sed '/^$/d'
   echo -n "Repeat the characters: "
   read DIG
   clear
   wget -qO- $(wget -qO- $SERVER)/?$ID:$DIG@$2 | sed '/^$/d'
 ;;
 help | -h | *)
   echo "Termk:"
   echo "Create usage: $0 create [DISTRO]"
   echo "List Distros: $0 list"
esac
