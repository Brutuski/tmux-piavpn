#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"
source "$CURRENT_DIR/helpers.sh"

get_port() 
{
    port=$(piactl get portforward)

    if [[ $port == "Inactive" ]]; then
        printf  "Inactive"
    elif [[ $port == "Attempting" ]]; then
        printf  "Port Attempting..."
    elif [[ $port == "Failed" ]]; then
        printf  "Port Failed"
    elif [[ $port == "Unavailable" ]]; then
        printf  "Port Unavailable"
    else
        printf "$port"
    fi
}

get_port

