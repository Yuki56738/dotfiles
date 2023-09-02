rusgit_complete() {
    local cur prev cword opts
    _get_comp_words_by_ref -n : cur prev cword
    set ${COMP_WORDS[@]}
    if test "$prev" = "rusgit" ;then
        opts="ac add alias branch clone commit diff help log merge pull push rebase status tag undo init"
        COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
    elif test "$(echo $2 | grep -E "(add|ac|diff)")" ;then
        dir="$(echo ${cur} | grep -o ".*/")"
        if test "${dir}" ;then
            COMPREPLY=( $(compgen -W "$(ls -F ${dir} | sed -E "s@(.*)@${dir}\1@g")" -- "${cur}") )
        else 
            COMPREPLY=( $(compgen -W "$(ls -F)" -- "${cur}") )
        fi
    elif test "$(echo $2 | grep -E "(branch|merge|pull|push|rebase)")" ;then
        opts="$(git branch | sed -E 's/\* //g' | sed -E 's/  //g')"
        COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
    elif test "$2" = "undo" ;then
        if test "$(echo $3 | grep -E "(add|head)")" ;then
            dir="$(echo ${cur} | grep -o ".*/")"
            if test "${dir}" ;then
                COMPREPLY=( $(compgen -W "$(ls -F ${dir} | sed -E "s@(.*)@${dir}\1@g")" -- "${cur}") )
            else 
                COMPREPLY=( $(compgen -W "$(ls -F)" -- "${cur}") )
            fi
        else 
            opts="add commit head orig"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
        fi
    elif test "$2" = "tag" ;then
        if test "$(echo $3 | grep -E "(-d|-s)")" ;then
            opts="$(git tag)"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
        fi
    fi
}
complete -o nospace -F rusgit_complete rusgit
