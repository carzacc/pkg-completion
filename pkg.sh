_pkg()
{
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    root_subcommands="install remove update"
    if [[ COMP_CWORD -eq 1 ]]; then
        COMPREPLY=($(compgen -W "${root_subcommands}" -- ${cur}))
    fi
}
complete -F _pkg pkg

