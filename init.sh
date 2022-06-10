#!/bin/sh

#init project
npm init

#install ts & jest
npm install typescript -D
npm install jest -D
npm install ts-jest -D
npm install @types/jest -D

npm install faker-br -D
npm install cypress -D


#init jest
npx ts-jest config:init

#project structure
mkdir src tests

#init git & add gitignore
git init
echo 'node_modules' > .gitignore
