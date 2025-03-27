#!/bin/bash

# ANSI color codes
RED=$(tput setaf 1)
GREEN=$(tput setaf 2)
YELLOW=$(tput setaf 3)
BLUE=$(tput setaf 4)
MAGENTA=$(tput setaf 5)
CYAN=$(tput setaf 6)
WHITE=$(tput setaf 7)
RESET=$(tput sgr0)

echo "${YELLOW}> Hello ${RED}$USER! ${RESET}"
echo "${YELLOW}> You are using ${CYAN} DOMAIN HUNTER ${RESET}"
echo "==============================================================================="

echo "${GREEN}
▗▖ ▗▖▗▄▄▄▖▗▖    ▗▄▄▖ ▗▄▖ ▗▖  ▗▖▗▄▄▄▖    ▗▄▄▄▖ ▗▄▖ 
▐▌ ▐▌▐▌   ▐▌   ▐▌   ▐▌ ▐▌▐▛▚▞▜▌▐▌         █  ▐▌ ▐▌
▐▌ ▐▌▐▛▀▀▘▐▌   ▐▌   ▐▌ ▐▌▐▌  ▐▌▐▛▀▀▘      █  ▐▌ ▐▌
▐▙█▟▌▐▙▄▄▖▐▙▄▄▖▝▚▄▄▖▝▚▄▞▘▐▌  ▐▌▐▙▄▄▖      █  ▝▚▄▞▘
                                                                                       
${RESET}"

echo "${BLUE}
██████╗  ██████╗ ███╗   ███╗ █████╗ ██╗███╗   ██╗    ██╗  ██╗██╗   ██╗███╗   ██╗████████╗███████╗██████╗ 
██╔══██╗██╔═══██╗████╗ ████║██╔══██╗██║████╗  ██║    ██║  ██║██║   ██║████╗  ██║╚══██╔══╝██╔════╝██╔══██╗
██║  ██║██║   ██║██╔████╔██║███████║██║██╔██╗ ██║    ███████║██║   ██║██╔██╗ ██║   ██║   █████╗  ██████╔╝
██║  ██║██║   ██║██║╚██╔╝██║██╔══██║██║██║╚██╗██║    ██╔══██║██║   ██║██║╚██╗██║   ██║   ██╔══╝  ██╔══██╗
██████╔╝╚██████╔╝██║ ╚═╝ ██║██║  ██║██║██║ ╚████║    ██║  ██║╚██████╔╝██║ ╚████║   ██║   ███████╗██║  ██║
╚═════╝  ╚═════╝ ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝╚═╝  ╚═══╝    ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚══════╝╚═╝  ╚═╝
${RESET}"

echo "==============================================================================="
echo ""

read -p "${BLUE}ENTER THE DOMAIN: ${RESET}" domain
echo ""
echo "${CYAN}Please wait. ${RESET}"
echo "${CYAN}It may take some time. ${RESET}"
echo "Sub domains ${GREEN}loading${RESET}"
echo "${GREEN}.    ${RESET}"
echo ". "
echo ".    "
echo ". "
echo ". "

if command -v assetfinder &> /dev/null && command -v httprobe &> /dev/null; then
  assetfinder "$domain" > subs
  cat subs | httprobe > live_subs
  sort -u live_subs > sorted_subs
  echo "${GREEN}"
  cat sorted_subs
  echo "${RESET}"
  rm subs live_subs # Clean up temporary files
else
  echo "${RED}Error: assetfinder or httprobe not found. Please install them.${RESET}"
  echo "${CYAN}Install assetfinder: go install -v github.com/tomnomnom/assetfinder@latest${RESET}"
  echo "${CYAN}Install httprobe: go install -v github.com/tomnomnom/httprobe@latest${RESET}"
  exit 1
fi

echo "${MAGENTA}          --** ${YELLOW}Thank You for choosing us${RESET} ${MAGENTA}**--${RESET}"
echo "${WHITE}.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.-.${RESET}"
echo ""

echo "${RED}
░▒▓███████▓▒░       ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░      ░▒▓████████▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓█▓▒░░▒▓█▓▒░      ░▒▓█▓▒░░▒▓█▓▒░ 
░▒▓███████▓▒░       ░▒▓█▓▒░░▒▓█▓▒░ 
                                   
                                   

  
                                     
${RESET}"
