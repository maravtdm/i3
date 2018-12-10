#!/bin/bash 

Update=$(checkupdates | cut -d " " -f1 | wc -l)
connect=$(fping arch.yourlabs.org | awk '{print $3}')

if [ $connect == "alive" ]; then
    if [ "$Update" = "0" ]; then 
        echo -e ""
    else
        echo -e " $Update "
    fi 
else
    echo -e ""
fi
