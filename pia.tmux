#!/usr/bin/env bash

CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source "$CURRENT_DIR/scripts/helpers.sh"

pia_commands=(
  "#($CURRENT_DIR/scripts/status.sh)"
  "#($CURRENT_DIR/scripts/ip.sh)"
  "#($CURRENT_DIR/scripts/region.sh)"
  "#($CURRENT_DIR/scripts/flag.sh)"
  "#($CURRENT_DIR/scripts/port.sh)"
)

pia_interpolation=(
	"\#{pia_status}"
	"\#{pia_ip}"
	"\#{pia_region}"
	"\#{pia_flag}"
	"\#{pia_port}"
)

set_tmux_options() {
	local option="$1"
	local value="$2"
	tmux set-option -gp "$option" "$value"
}

do_interpolation() {
	local interpolated="$1"

	for ((i=0; i<${#pia_commands[@]}; i++)); do
		interpolated=${interpolated/${pia_interpolation[$i]}/${pia_commands[$i]}}
	done

	echo "$interpolated"
}

update_tmux_option() {
	local option="$1"
	local option_value="$(get_tmux_option "$option")"
	local new_option_value="$(do_interpolation "$option_value")"
	set_tmux_option "$option" "$new_option_value"
}

main() {
	update_tmux_option "status-right"
	update_tmux_option "status-left"
}

main

