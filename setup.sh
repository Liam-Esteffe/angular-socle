#!/bin/bash

echo '    ___                      __              ______                     __      __     '
echo '   /   |  ____  ____ ___  __/ /___ ______   /_  __/__  ____ ___  ____  / /___ _/ /____ '
echo '  / /| | / __ \/ __ `/ / / / / __ `/ ___/    / / / _ \/ __ `__ \/ __ \/ / __ `/ __/ _ \'
echo ' / ___ |/ / / / /_/ / /_/ / / /_/ / /       / / /  __/ / / / / / /_/ / / /_/ / /_/  __/'
echo '/_/  |_/_/ /_/\__, /\__,_/_/\__,_/_/       /_/  \___/_/ /_/ /_/ .___/_/\__,_/\__/\___/ '
echo '             /____/                                          /_/                       '

echo 'Generate template with tailwindCss'

echo 'What is your system : (choose) 1: Macos 🍏 / 2: Linux 🐧'

read;


if [ $REPLY == 1 ]
then
    echo "-------> MacOs installation ..."
    brew install jq
fi

if [ $REPLY == 2 ]
then
    echo "-------> Linux installation ..."
    sudo apt install jq
fi

if [[ $REPLY != 1 && $REPLY != 2 ]];
then
    tput setaf 1 ; echo "-------> System not supported ❌"
    exit 84
fi

echo -n "-----> Choose a project name : "
project_name="angular-template"
read project_name
cd angular-template ;
jq '."name" = "'"$project_name"'"' package.json > test.txt
mv test.txt package.json
cat package.json
npm i



echo -n "choose your location project : "
read; 

cd ../ ; cp -r ./angular-template $REPLY; cd $REPLY
mv ./angular-template $project_name

echo "--------------------------------"
tput setaf 2 ; echo "Initialization finish good luck !"

