#!/usr/bin/env bash
Green='\033[0;32m'
NC='\033[0m'
FOLDER='full-stack-template'

echo "${Green}Installing...${NC}"
git clone https://github.com/all4site/full-stack-template.git &&
cd ${FOLDER}/install-scripts &&
chmod +x *.sh &&
./front.sh &&
echo "${Green}Finish...${NC}"

#//test
