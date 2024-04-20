#!/usr/bin/env bash
Green='\033[0;32m'
NC='\033[0m'
FOLDER='full-stack-template'

echo "${Green}Installing Front...${NC}"
cd ../../ && mkdir front && cd front &&
npx create-next-app . &&
npm i -D prettier @trivago/prettier-plugin-sort-imports &&
cd ../${FOLDER}/install-data/front &&
rm -rf .eslintrc.json &&
cp -rf *  ../../../front &&
cp -rf .*  ../../../front &&
echo "${Green}Finish Front...${NC}"
