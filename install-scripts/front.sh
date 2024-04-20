#!/usr/bin/env zsh
Green='\033[0;32m'
NC='\033[0m'
FOLDER='full-stack-template'

echo "${Green}Installing Front...${NC}"
cd ../../ && mkdir front && cd front &&
npx create-next-app . &&
npm i -D prettier @trivago/prettier-plugin-sort-imports &&
rm -rf .eslintrc.json &&
rm -rh .git &&
cd ../${FOLDER}/install-data/front &&
cp -rf *  ../../../front &&
cp -rf .*  ../../../front &&
echo "${Green}Finish Front...${NC}"
