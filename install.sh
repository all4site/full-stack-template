#!/usr/bin/env bash
Green='\033[0;32m'
NC='\033[0m'

echo "${Green}Installing...${NC}"
cd install-scrips &&
chmod +x *.sh &&
./front.sh &&
./back.sh
echo "${Green}Finish...${NC}"

