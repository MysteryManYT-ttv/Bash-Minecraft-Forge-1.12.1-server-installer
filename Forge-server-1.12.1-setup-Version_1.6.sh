#!/bin/bash

#Forge Server Setup

#GPL-3.0 LICENSE Copyright Aiden Rebec aka MysteryManYT-ttv 2026

GREEN=$'\033[1;32m'
YELLOW=$'\033[1;33m'
ENDCOLOR=$'\033[0m'
RED=$'\033[31m'


echo ${GREEN} Downloading Forge version 1.12.1 ${ENDCOLOR}


wget -O ~/Documents/forge-1.12.2-14.23.5.2859-installer.jar \
"https://maven.minecraftforge.net/net/minecraftforge/forge/1.12.2-14.23.5.2859/forge-1.12.2-14.23.5.2859-installer.jar"

echo ${YELLOW} "Checking for Java updates, If missing- openjdk-21-jdk Download will start." ${ENDCOLOR}
sudo apt upgrade openjdk-21-jdk || sudo apt install openjdk-21-jdk


mkdir -p "$HOME/Documents/Minecraft-Server"
cd "$HOME/Documents/Minecraft-Server"
java -jar "$HOME/Documents/forge-1.12.2-14.23.5.2859-installer.jar" --installServer

echo ${RED} Install/Setup Finished ${ENDCOLOR}

echo ${GREEN} Launching Server ${ENDCOLOR}
bash ~/Documents/Minecraft-Server/./run.sh
nano ~/Documents/Minecraft-Server/eula.txt
bash ~/Documents/Minecraft-Server/./run.sh

#Socials:
#https://twitch.tv/mysterymanyt
#https://github.com/MysteryManYT-ttv
#https://sourceforge.net/u/aiden-r/profile/



#-------------------------------------------------#
#                 END OF SCRIPT                   #
#-------------------------------------------------#

