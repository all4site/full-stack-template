#!/usr/bin/env zsh
Green='\033[0;32m'
NC='\033[0m'
FOLDER='full-stack-template'

echo "${Green}Installing Wrapper...${NC}"
cd ../install-data/ &&
cp -rf  .gitignore ../../ &&
cp -rf package.json ../../ &&
cd ../../ &&
rm -rf install.sh full-stack-template
echo "${Green}Finish Wrapper...${NC}"
