#!/bin/bash

device="${BLOCK_INSTANCE:-doc}"
mount | grep ${device}
status=$?

URGENT_VALUE=1

if [[ "${status}" == "0" ]]; then
    echo "${device}: "
    #"
    echo ""
  else
    echo "${device}: "
    #"
    if [[ ${status} -le ${URGENT_VALUE} ]]
	then
	exit 33
	fi
fi
