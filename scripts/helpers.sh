#!/bin/bash -

get_tmux_option() {
    local option=$1
    local default_value=$2
    local option_value="$(tmux show-option -gqv "$option")"

    if [[ -z "$option_value" ]]; then
        echo "$default_value"
    else
        echo "$option_value"
    fi
}

set_tmux_option() {
    local option=$1
    local value=$2
    tmux set-option -gq "$option" "$value"
}

is_osx() {
    [ $(uname) == "Darwin" ]
}

is_cygwin() {
    command -v WMIC > /dev/null
}

command_exists() {
    local command="$1"
    type "$command" >/dev/null 2>&1
}

print_roman() {
  local -a conv
  local number=$1 div rom num out
  conv=(I 1 IV 4 V 5 IX 9 X 10 XL 40 L 50 XC 90 C 100 CD 400 D 500 CM 900 M 1000)
  for num rom in ${(Oa)conv}; do
    (( div = number / num, number = number % num ))
    while (( div-- > 0 )); do
      out+=$rom
    done
  done
  echo $out
}

round() {
    printf %.0f $(echo "$1/1" | bc -l)
};
