#!/usr/bin/env zsh
Green='\033[0;32m'
NC='\033[0m'
FOLDER='full-stack-template'

echo "${Green}Git Installing...${NC}"
cd ../../ &&
git init &&
git add . &&
git commit -m "first commit" &&
git branch -M main &&
vared -p 'git remote add origin: ' -c link &&
git remote add origin $link &&
git push -u origin main &&
rm -rf install.sh full-stack-template &&
echo "${Green}Git Finish...${NC}"

