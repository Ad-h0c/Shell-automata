#!/usr/bin/env bash
read -n 1 -r -s -p $'Running this file will create the dependices you need to use the hardhat including an external tool called 'pv' press enter to continue...'

echo ""

echo ""

echo "    _____    ______   ___       ____     ______ "
echo "   / ___/   /_  __/  /   |     / __ \   /_  __/ "
echo "   \__ \     / /    / /| |    / /_/ /    / /    "
echo "  ___/ /    / /    / ___ |   / _, _/    / /     "
echo " /____/    /_/    /_/  |_|  /_/ |_|    /_/      "

echo ""

echo ""

sudo apt update

sudo apt install curl git

if ! command -v curl &>/dev/null; then
  sudo apt install curl
fi

if ! command -v git &>/dev/null; then
  sudo apt install git
fi

if ! command -v nodejs &>/dev/null; then
  curl -sL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt-get install -y nodejs
fi

echo -n "Enter the directory name: " | pv -qL 80

read dir

mkdir $dir && cd $dir


npm init

npm install --save-dev hardhat

npx hardhat

npm install --save-dev @nomiclabs/hardhat-ethers ethers @nomiclabs/hardhat-waffle ethereum-waffle chai

echo 'require("@nomiclabs/hardhat-waffle");' >>hardhat.config.js

mkdir contracts

mkdir test

echo "     ______      _   __        ____  "
echo "    / ____/     / | / /       / __ \ "
echo "   / __/       /  |/ /       / / / / "
echo "  / /___      / /|  /       / /_/ /  "
echo " /_____/     /_/ |_/       /_____/   "
