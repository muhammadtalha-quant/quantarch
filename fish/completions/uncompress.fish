complete -c uncompress -F -k \
    -n '__fish_use_subcommand' \
    --condition "not string match -q -- '--help' (commandline -opc)" \
    -d 'Archive to extract'
complete -c extract -l help -f -d 'Show usage'
# Only suggest archive file types
complete -c extract -f -k \
    -a "(find . -maxdepth 1 -name '*.tar' -o -name '*.tar.gz' -o -name '*.tar.xz' -o -name '*.zip' 2>/dev/null | sed 's|^\./||')"