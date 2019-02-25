#!/bin/bash

source lemonad.sh

main() {
    echo $@ | log "start" |
    maybe cat | log "cat" |
    maybe tr '[:lower:]' '[:upper:]' | log "tr" |
    maybe wc -w | log "wc" |
    end
}

main $@