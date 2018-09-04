#!/bin/bash
  
# ORDL Alerts
ORDL=$(sendtoxymon.pl 10.101.24.2 "xymondboard page=top/jivedcs/ord-legacy color=red fields=hostname,testname,color" | sed 's/|/,/g' | awk '{print $0",,,"}')
if [ -n "$ORDL" ]; then
  for line in "${ORDL[@]}"
  do
    if [[ $line =~ "Fax_Channels" ]]; then
      continue
    else
      screen -S say-queue -X stuff "say -v Samantha ${line}^M"
    fi
  done
fi
 # ORD Alerts
#ORD=($(sendtoxymon.pl 10.101.24.2 "xymondboard page=top/jivedcs/ord color=red fields=hostname,testname,color" | grep ORD- | grep -v gr- | sed 's/|/,/g' | sed $'s/ /\\\n/g' | awk '{print $0",,,"}'))
#if [ -n "$ORD" ]; then
#  for line in "${ORD[@]}"
#  do
#    screen -S say-queue -X stuff "say -v Samantha ${line}^M"
#  done
#fi
 # MegaPBX SIP Alerts
SITES=($(sendtoxymon.pl 10.20.26.224 "xymondboard color=red fields=hostname,testname,color" | egrep -v "gr-|FaxTest|webfront" | sed 's/|/,/g' | sed $'s/ /\\\n/g' | awk '{print $0",,,"}'))
if [ -n "$SITES" ]; then
  for line in "${SITES[@]}"
  do
    if [[ $line =~ "PVU" ]]; then
      continue
    elif [[ $line =~ "pvu" ]]; then
      continue
    else
      screen -S say-queue -X stuff "say -v Samantha ${line}^M"
    fi
  done
fi
# at now + 1 minutes << END
# "$0" "$@"
# END
# init
#function pause(){
#   read -p "$*"
#   }
#pause 'press [Enter]'

#10.21.10.4 pwd nocrockssocksoff
# screen -list
# screen -wipe
# screen -dmS say-queue
# screen -X -S [session] quit to detach
# screen -r [session] to attach]
# screen -d to detach
# to remove the ^M you gotta do a ctrl+v enter and text will turn blue :)


00000000000000000



#!/bin/bash

# ORDL Alerts
ORDL=$(/Users/jive-noc/siri/sendtoxymon.pl 10.101.24.2 "xymondboard page=top/jivedcs/ord-legacy color=red fields=hostname,testname,color" | sed 's/|/,/g' | awk '{print $0",,,"}')
if [ -n "$ORDL" ]; then
  for line in "${ORDL[@]}"
  do
    if [[ $line =~ "Fax_Channels" ]]; then
      continue
    elif [[ $line =~ "logs-sip-channel" ]]; then
      continue
    else
      screen -S 584.ttys000.Jive-C07QC5Q8G1HW  -X stuff "say -v Samantha ${line}^M"
    fi
  done
fi

# ORD Alerts
# ORD=($(sendtoxymon.pl 10.101.24.2 "xymondboard page=top/jivedcs/ord color=red fields=hostname,testname,color" | grep ORD- | grep -v gr- | sed 's/|/,/g' | sed $'s/ /\\\n/g' | awk '{print $0",,,"}'))
#if [ -n "$ORD" ]; then
#  for line in "${ORD[@]}"
#  do
#    screen -S say-queue -X stuff "say -v Samantha ${line}^M"
#  done
# fi

# MegaPBX SIP Alerts
SITES=($(/Users/jive-noc/siri/sendtoxymon.pl 10.20.26.224 "xymondboard color=red fields=hostname,testname,color" | egrep -v "gr-|FaxTest|webfront" | sed 's/|/,/g' | sed $'s/ /\\\n/g' | awk '{print $0",,,"}'))
if [ -n "$SITES" ]; then
 for line in "${SITES[@]}"
  do
    if [[ $line =~ "PVU" ]]; then
      continue
    elif [[ $line =~ "pvu" ]]; then
      continue
    elif [[ $line =~ "logs-sip-channel" ]]; then
      continue
    else
      screen -S 584.ttys000.Jive-C07QC5Q8G1HW  -X stuff "say -v Samantha ${line}^M"
    fi
  done
fi
