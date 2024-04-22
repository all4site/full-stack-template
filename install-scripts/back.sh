#!/usr/bin/env zsh
Green='\033[0;32m'
NC='\033[0m'
FOLDER='full-stack-template'

echo "${Green}Installing Front...${NC}"
cd ../../ && mkdir back && cd back &&
npm i -g @nestjs/cli && nest new . &&

echo "${Green}All Finish...${NC}"
