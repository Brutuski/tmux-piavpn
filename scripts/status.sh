#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}"  )" && pwd  )"
source "$CURRENT_DIR/helpers.sh"

text_connected=$(get_tmux_option "@piavpn_text_connected" "Connected")
text_connecting=$(get_tmux_option "@piavpn_text_connecting" "Connecting...")

text_disconnected=$(get_tmux_option "@piavpn_text_disconnected" "Disconnected")
text_disconnecting=$(get_tmux_option "@piavpn_text_disconnecting" "Disconnecting...")

text_interrupted=$(get_tmux_option "@piavpn_text_interrupted" "Interrupted")

text_reconnecting=$(get_tmux_option "@piavpn_text_reconnecting" "Reconnecting...")

text_still_reconnecting=$(get_tmux_option "@piavpn_text_still_reconnecting" "Reconnecting...")

text_disconnecting_reconnecting=$(get_tmux_option "@piavpn_text_disconnecting_reconnecting" "Connecting again...")
get_status() 
{
    status=$(piactl get connectionstate)

    if [[ $status == "Disconnected" ]]; then
        printf "$text_disconnected"
    elif [[ $status == "Connecting" ]]; then
        printf "$text_connecting"
    elif [[ $status == "StillConnecting" ]]; then
        printf "$text_connecting"
    elif [[ $status == "Connected" ]]; then
        printf "$text_connected"
    elif [[ $status == "Interrupted" ]]; then
        printf "$text_interrupted"
    elif [[ $status == "Reconnecting" ]]; then
        printf "$text_reconnecting"
    elif [[ $status == "StillReconnecting" ]]; then
        printf "$text_reconnecting"
    elif [[ $status == "DisconnectingToReconnect" ]]; then
        printf "$text_disconnecting_reconnecting"
    elif [[ $status == "Disconnecting" ]]; then
        printf "$text_disconnecting"
    fi
}

get_status

