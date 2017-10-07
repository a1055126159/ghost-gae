#!/bin/bash
path="$(pwd)"
yarn global add ghost-cli@latest
yarn global add knex-migrator
mkdir ghost
cd ghost
# ghost install --url=https://hellojcc-178809.appspot.com --no-prompt --no-stack --no-setup-linux-user --no-setup-mysql --no-setup-nginx --no-setup-systemd
ghost install --url=https://hellojcc-178809.appspot.com --db=sqlite3 --dbpath=./content/data/ghost.db --no-prompt --no-stack --no-setup-linux-user --no-setup --no-setup-mysql --no-setup-nginx --no-setup-systemd
# echo $path
cp ../config*.json ./
ghost setup migrate
# ls -al
# ls -al node_modules
# version="$(ls -t ghost/versions | head -1)"
# target=$path/ghost/versions/$version
# echo $target
# ln -s $target ghost/current
# cd ghost
# ls -al
# cd current
# yarn install
# ls -al
