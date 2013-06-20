#!/bin/bash


#This script is to solve slow wireless connection problem on Linux. (only happened sometimes)


kernel_release=$(uname -r)

echo ""
echo "your kernel is $kernel_release"

if [ "$kernel_release" == "3.8.0-25-generic" ]; then
	echo "rmmod iwldvm & iwlwifi"
	echo "modprobe iwlwifi & disable 11n"
	sudo rmmod iwldvm && sudo rmmod iwlwifi && sudo modprobe iwlwifi 11n_disable=1
else
	if [ "$kernel_release" == "3.7.1-030701-generic" ]; then
		echo "rmmod iwldvm & iwlwifi"
		echo "modprobe iwlwifi & disable 11n"
		sudo rmmod iwldvm && sudo rmmod iwlwifi && sudo modprobe iwlwifi 11n_disable=1
	else
		echo "rmmod iwlwifi"
		echo "modprobe iwlwifi & disable 11n"
		sudo rmmod iwlwifi && sudo modprobe iwlwifi 11n_disable=1
	fi
fi

echo "reconnecting wireless now, please wait a bit ...."
echo ""
