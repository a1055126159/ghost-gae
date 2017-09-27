#!/bin/bash
path="$(pwd)"
echo $path
cp config*.json ghost
ls -al
ls -al node_modules
version="$(ls -t ghost/versions | head -1)"
target=$path/ghost/versions/$version
echo $target
ln -s $target ghost/current
cd ghost
ls -al
cd current
yarn install
ls -al
