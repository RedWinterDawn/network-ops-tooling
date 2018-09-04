#!/bin/bash
clear
echo "Hello Ashlan, Welcome to Rancd fix version 1.0"
echo
eng 199.36.250.145

ubuntu@rancid:/var/lib/rancid$ sudo route add -net 10.0.0.0/8 gw 10.103.0.1
ubuntu@rancid:/var/lib/rancid$ sudo route add -net 0.0.0.0/0 gw 10.103.1.254
ubuntu@rancid:/var/lib/rancid$ sudo route delete -net 0.0.0.0/0 gw 10.103.0.1
ubuntu@rancid:/var/lib/rancid$ ping 8.8.8.8

route -n
netstat -nr




in the history


ssh -i phil-west.pem ubuntu@10.103.1.144

 ssh 10.101.8.1       FIRST!!!
 
 
 
 
 sudo /etc/init.d/networking restarticho -n "Fix those silly rancid email alerts - br1.c1.jiveip.net"
read step1
ssh 10.101.8.1 'pwd; ;ls' 


#if [ step1 = y ]; then
#	echo "... logging in now."
#	ssh 10.101.8.1
#	ls -al
#	'
#	exit 1
#fi
#echo -n "Goto ssh -i phil-west.pem ubuntu@10.103.1.144"
#read pem
#if [ pem = y ]; then
#	echo "warping to ubu"
#	ssh -i phil-west.pem ubuntu@10.103.1.144"
#	netstat -nr
#	'
#	exit 1
#fi
#
#```````````````````````````````````````````
#echo -n "Do you wish restart fax processor enc1? <y/n>"
#read enc1
#if [ $enc1 = y ]; then
#	#ssh into faxenc1, than run service fax-processor restart
#	        echo -n "enc1 Works"
#		"Fixing the FAX channels like a champ!"
#		echo
#		ssh 10.101.8.1 '
#		ls -la
#		'
#		exit 1
#	fi
#	if [ $enc1 = n ]; then
#		#ssh into faxenc2, then run service fax-processor restart
#		        echo -n "enc2 works"
#			"Fixing the FAX channels like a champ!"
#			echo
#			ssh 10.101.8.1 '
#			ls -la
#			'
#			exit 1
#		fi
#
#
#		"Fixing the FAX channels like a champ!"
#		echo
#		ssh 10.101.8.1 '
#		ls -la
#		'


