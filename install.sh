#!/usr/bin/env bash
Green='\033[0;32m'
NC='\033[0m'

echo "${Green}Installing...${NC}"
git clone https://github.com/all4site/full-stack-template.git &&
cd install-scrips &&
chmod +x *.sh &&
./front.sh &&
echo "${Green}Finish...${NC}"

