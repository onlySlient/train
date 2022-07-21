#!/bin/bash -e

# 自动补全

_foo() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=($(compgen -W "exec help test" -- $cur))
}
complete -F _foo foo

# chmod +x foo.sh
# sudo cp foo.sh /etc/bash_completion.d/
# source /etc/bash_completion.d/ foo.sh
# foo [tab] [tab]
