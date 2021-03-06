#!/usr/bin/env bash

get_input() {
    ibus engine
}

set_input() {
    local pre_input
    pre_input=$(ibus engine)
    if [[ $pre_input != "$1" ]]; then
        ibus engine $1
    fi
    echo -n $pre_input
}

init() {
    echo -n 0
}

"$@"
