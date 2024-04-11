#!/bin/bash

flag=-1
while [ $flag -eq -1 ]; do
    echo -e "Select your region:\n a)US  b)Greece c)Other"
    read option
    if [ $option == 'a' ]; then	
        flag=1
    elif [ $option == 'b' ]; then
        flag=2
    elif [ $option == 'c' ]; then
        flag=0
    else
        echo 'Invalid option!'
    fi
done 

printf "Path to install (default): "
read path

if [[ $path != '' ]]; then
    echo 'here'
    sudo cp -R cows $path
else
    sudo cp -R cows /usr/share/cowsay/
fi

printf "Insert your home path so that important settings can be stored: "
read home

cp cowrc $home/.cowrc
echo -e "\n./.cowrc $flag" >> $home/.bashrc
echo $home > .install-data