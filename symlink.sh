#!/bin/bash
path="$(pwd)"
version="$(ls -t ghost/versions | head -1)"
target=$path/ghost/versions/$version
echo $target
ln -s $target ghost/current
