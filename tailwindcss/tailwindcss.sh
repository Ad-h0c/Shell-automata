#!/usr/bin/env bash

read -n 1 -r -s -p $'Running this file will create the dependices you need to use the tailwind css including an external tool called 'pv' press enter to continue...'

echo "    _____    ______   ___       ____     ______ "
echo "   / ___/   /_  __/  /   |     / __ \   /_  __/ "
echo "   \__ \     / /    / /| |    / /_/ /    / /    "
echo "  ___/ /    / /    / ___ |   / _, _/    / /     "
echo " /____/    /_/    /_/  |_|  /_/ |_|    /_/      "

echo ""

echo ""

if ! command -v pv &>/dev/null; then
  sudo apt-get install pv -y
fi

echo -n "Enter the directory name: " | pv -qL 80

read dir

mkdir $dir && cd $dir

echo
echo "##########################################################" | pv -qL 80
echo "##### Initializing the npm #########" | pv -qL 80
echo "##########################################################" | pv -qL 80

npm init

echo
echo "##########################################################" | pv -qL 80
echo "##### Installing the tailwind css #########" | pv -qL 80
echo "##########################################################" | pv -qL 80

npm install -D tailwindcss

echo
echo "##########################################################" | pv -qL 80
echo "##### Initializing the tailwind css #########" | pv -qL 80
echo "##########################################################" | pv -qL 80

npx tailwindcss init

read -n 1 -r -s -p $'By pressing the enter package.json file will open. Replace the orignal scripts file with the new one...' | pv -qL 80

echo '"scripts": {
    "build": "tailwindcss -i ./input.css -o ./css/main.css", 
    "watch": "tailwindcss -i ./input.css -o ./css/main.css --watch"
  }
' >>package.json

gedit package.json

wait pidof gedit

read -n 1 -r -s -p $'By pressing the enter tailwind.config.json file will open. Replace the orignal scripts file with the new one...' | pv -qL 80
echo ""
echo 'content: ["./*.html"]' >>tailwind.config.js

gedit tailwind.config.js

wait pidof gedit

echo
echo "##########################################################" | pv -qL 80
echo "##### Creating index.html file #########" | pv -qL 80
echo "##########################################################" | pv -qL 80

touch index.html

echo "Index.html has been created!" | pv -qL 80

echo
echo "##########################################################" | pv -qL 80
echo "##### creating input.css file #########" | pv -qL 80
echo "##########################################################" | pv -qL 80

echo "@tailwind base;
@tailwind components;
@tailwind utilities;" >input.css

echo "input.css has been created!" | pv -qL 80

echo
echo "##########################################################" | pv -qL 80
echo "##### creating Javscript file #########" | pv -qL 80
echo "##########################################################" | pv -qL 80

mkdir js && cd js
touch index.js

echo "Javascript file has been created!" | pv -qL 80

cd ..

echo
echo "##########################################################" | pv -qL 80
echo "##### Running npm build #########" | pv -qL 80
echo "##########################################################" | pv -qL 80

npm run build

echo "press y to enter development mode. Else press anything." | pv -qL 80

echo ""

echo ""

read -p "Enter development mode? [Y/n] " ans
case "$ans" in
y | Y | "")
  echo
  echo "##########################################################" | pv -qL 80
  echo "##### Running npm watch #########" | pv -qL 80
  echo "##########################################################" | pv -qL 80
  npm run watch
  ;;
n | N)
  echo "     ______      _   __        ____  "
  echo "    / ____/     / | / /       / __ \ "
  echo "   / __/       /  |/ /       / / / / "
  echo "  / /___      / /|  /       / /_/ /  "
  echo " /_____/     /_/ |_/       /_____/   "

  echo "You succesfully installed tailwindcss dependencies" | pv -qL 80
  exit 1
  ;;
*)
  echo "     ______      _   __        ____  "
  echo "    / ____/     / | / /       / __ \ "
  echo "   / __/       /  |/ /       / / / / "
  echo "  / /___      / /|  /       / /_/ /  "
  echo " /_____/     /_/ |_/       /_____/   "

  echo "You succesfully installed tailwindcss dependencies" | pv -qL 80
  exit 1
  ;;
esac
