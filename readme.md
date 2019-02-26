# When Life Gives You Bash, Make leMonad
[How fake functional programming turns scripts more readable](http://kicsikrumpli.github.io/today-i-learned/til/bash/monad/2019/02/21/lemonad.html)

## Tl;dr
Write bash code like

```
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
```