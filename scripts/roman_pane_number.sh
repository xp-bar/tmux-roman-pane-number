#!/usr/bin/env bash
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source "$CURRENT_DIR/helpers.sh"

roman_pane_number() {
   echo "${pane_index}";
   # print_roman $pane_index 
}

roman_pane_number
