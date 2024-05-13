#!/bin/bash

# NeuroFetch: A simple system information fetch script

# Define colors
RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE="\033[0;34m"
MAGENTA="\033[0;35m"
CYAN="\033[0;36m"
WHITE="\033[0;37m"
RESET="\033[0m"

# Fetch system information
USER=$(whoami)
HOSTNAME=$(hostname)
OS=$(uname -o)
KERNEL=$(uname -r)
UPTIME=$(uptime -p)
PACKAGES=$(dpkg --get-selections | wc -l)
SHELL=$(echo $SHELL)
RESOLUTION=$(xdpyinfo | grep 'dimensions:' | awk '{print $2}')
CPU=$(lscpu | grep 'Model name:' | sed 's/Model name: *//')
MEMORY=$(free -h | grep 'Mem:' | awk '{print $3 "/" $2}')

# Display the information
echo -e "${CYAN}           _____                _     _____    _     _       "
echo -e "${CYAN}          |   | |___ ___ ___   |_|___|  |  |  |_|___| |_ ___ "
echo -e "${CYAN}          | | | | . | -_|  _|  | | . |  |  |  | | -_|  _|_ -|"
echo -e "${CYAN}          |_|___|  _|___|_|    |_|  _|_____|_|_|___|_| |___|"
echo -e "${CYAN}                |_|               |_|                       ${RESET}"

echo -e "${YELLOW}User:${RESET}       ${GREEN}$USER${RESET}"
echo -e "${YELLOW}Hostname:${RESET}   ${GREEN}$HOSTNAME${RESET}"
echo -e "${YELLOW}OS:${RESET}         ${GREEN}$OS${RESET}"
echo -e "${YELLOW}Kernel:${RESET}     ${GREEN}$KERNEL${RESET}"
echo -e "${YELLOW}Uptime:${RESET}     ${GREEN}$UPTIME${RESET}"
echo -e "${YELLOW}Packages:${RESET}   ${GREEN}$PACKAGES${RESET}"
echo -e "${YELLOW}Shell:${RESET}      ${GREEN}$SHELL${RESET}"
echo -e "${YELLOW}Resolution:${RESET} ${GREEN}$RESOLUTION${RESET}"
echo -e "${YELLOW}CPU:${RESET}        ${GREEN}$CPU${RESET}"
echo -e "${YELLOW}Memory:${RESET}     ${GREEN}$MEMORY${RESET}"
