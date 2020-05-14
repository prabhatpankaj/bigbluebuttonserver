#!/usr/bin/env bash

curl -sL https://raw.githubusercontent.com/prabhatpankaj/ubuntustarter/master/initial.sh | sh

n=0
until [ $n -ge 9 ]
do
    wget https://ubuntu.bigbluebutton.org/bbb-install.sh  && \
    chmod a+x bbb-install.sh && \
   ./bbb-install.sh -v xenial-220 -s $1 -e $2 -l -g && break
   echo "Previous attempt failed, restarting in 20 seconds.."
   sleep 20
   n=$[$n+1]
done
