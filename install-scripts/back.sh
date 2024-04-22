#!/usr/bin/env zsh
Green='\033[0;32m'
NC='\033[0m'
FOLDER='full-stack-template'

echo "${Green}Installing Back...${NC}"
cd ../../ && mkdir back && cd back &&
npm i -g @nestjs/cli && nest new . &&
rm -rf src/* &&
cd ../${FOLDER}/install-data/back &&
cp -rf  src/* ../../../back/src &&
cp -rf .*  ../../../back &&
echo "${Green}Finish Back...${NC}"
