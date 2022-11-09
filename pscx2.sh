#!/bin/bash
# installer pscx2
# code by K1M4K-ID
# created 10-November-2022 - 12.00 am
# bersih bersih
clear
# code warna, supaya hari mu indah
fgBlack8="$(tput setf 0)";
fgRed8="$(tput setf 1)";
fgGreen8="$(tput setf 2)";
fgYellow8="$(tput setf 3)";
fgBlue8="$(tput setf 4)";
fgMagenta8="$(tput setf 5)";
fgCyan8="$(tput setf 6)";
fgWhite8="$(tput setf 7)";
RED="$(printf '\033[31m')"
GREEN="$(printf '\033[32m')"
ORANGE="$(printf '\033[33m')"
BLUE="$(printf '\033[34m')"
MAGENTA="$(printf '\033[35m')"
CYAN="$(printf '\033[36m')"
WHITE="$(printf '\033[37m')"
BLACK="$(printf '\033[30m')"
BLACKBG="$(printf '\033[40m')"
RESETFG="$(printf '\e033[0m')"
RESETBG="$(printf '\e[0m\n')"
# background
bgBlack8="$(tput setb 0)";
bgRed8="$(tput setb 1)";
bgGreen8="$(tput setb 2)";
bgYellow8="$(tput setb 3)";
bgBlue8="$(tput setb 4)";
bgMagenta8="$(tput setb 5)";
bgCyan8="$(tput setb 6)";
bgWhite8="$(tput setb 7)";
# function logo.
logo(){
cat <<- EOF
${RED}██████╗ ███████╗ ██████╗██╗  ██╗██████╗ 
██╔══██╗██╔════╝██╔════╝╚██╗██╔╝╚════██╗
██████╔╝███████╗██║      ╚███╔╝  █████╔╝
${WHITE}██╔═══╝ ╚════██║██║      ██╔██╗ ██╔═══╝ 
██║     ███████║╚██████╗██╔╝ ██╗███████╗
╚═╝     ╚══════╝ ╚═════╝╚═╝  ╚═╝╚══════╝
               ${GREEN}./pscx2
           ${WHITE}CoDe By K1M4K-ID
       ${RED}Selamat Bersenang Senang

EOF
}
# function requirements
# installasi - pscx2
function requirements() {
if [ -f /usr/bin/flatpak ]; then
printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m pscx2 is already exists!\n"
else
printf "\033[37;1m[\033[31;1m!\033[37;1m]\033[37;1m setup requirement pscx2! please wait..\n"
apt-get install flatpak -y &> /dev/null
sleep 0.025s
printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m added-repo!\n"
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
sleep 0.025s
printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m installing pscx2..\n"
flatpak install flathub net.pcsx2.PCSX2 -y
sleep 3s
printf "\033[31;1m[\033[32;1mOK\033[31;1m]\033[37;1m type >\033[32;1m flatpak run net.pscx2.PSCX2\n"
sleep 3s
fi
sleep 0.025
}
logo
requirements