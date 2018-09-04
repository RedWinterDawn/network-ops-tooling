#!/bin/bash
clear
echo "Hello Ashlan, how is your day going?"
echo
echo -n "Do you wish restart fax processor enc1? <y/n>"
read enc1
if [ $enc1 = y ]; then
#ssh into faxenc1, than run service fax-processor restart	
	echo -n "enc1 Works"
"Fixing the FAX channels like a champ!"
echo
ssh 10.101.8.1 '
ls -la
'
exit 1
fi
if [ $enc1 = n ]; then
#ssh into faxenc2, then run service fax-processor restart
	echo -n "enc2 works"
"Fixing the FAX channels like a champ!"
echo
ssh 10.101.8.1 '
ls -la
'
exit 1
fi


"Fixing the FAX channels like a champ!"
echo
ssh 10.101.8.1 '
ls -la
'

#service fax-processor restart
#x Channels Red alert usually mean the queue is empty for Faxes. If this alert goes on for more than 10 minutes there is something wrong with the Fax Encoder. 
#
#It should fix itself but it may need a helping hand, if so check on the status of the fax Encoder under Xymon https://xymon.c1.jiveip.net/xymon/top/jivedcs/ord-legacy/ord-legacy.html
#
#If SSH under the ORDL-FAXENC1 or ORDL-FAXENC2 are showing RED you would need to do the following:
#
#Try to SSH into the fax encoders through the utils tool, 10.101.8.1. From there you can use the name of the servers. faxenc1 or faxenc2.
#
#Then you may need to restart the fax processor by using the following command:
#
#service fax-processor restart
#
#
#
#chmod u+x script1.sh
#
#
#ssh $f2e1 '
#
#
#ssh f2e2






