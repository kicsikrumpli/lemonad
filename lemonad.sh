#!/bin/bash

maybe() {
    read line
    if [ -z "$line" ]; then
        echo "✘ $1" > /dev/stderr
    else
        echo "$line" | $@
    fi
}

log() {
    tee >( while read line; do echo "[$1] $line"; done > /dev/stderr )
}

end() { 
    tee > /dev/null
}
