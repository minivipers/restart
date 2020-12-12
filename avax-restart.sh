#!/bin/bash

proc="avalanchego"

for pl in $proc
do
        pc=`pidof $pl | wc -l`
        if [ $pc -lt 1 ]; then
                  #Not working
                  sudo systemctl start avalanchego
				  #service avalanchego restart
        fi
done
