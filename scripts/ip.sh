#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"
source "$CURRENT_DIR/helpers.sh"

get_ip() 
{
    ip=$(piactl get vpnip)

    if [[ $ip == "Unknown" ]]; then
    printf ""
    else 
    printf "$ip"
    fi
}

get_ip

