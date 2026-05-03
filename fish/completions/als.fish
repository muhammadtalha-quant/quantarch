complete -c als -s h -l help -f -d 'Show usage'
complete -c als -f -k \
    -a "(find . -maxdepth 1 -name '*.tar' -o -name '*.tar.gz' -o -name '*.tar.xz' -o -name '*.tar.bz2' -o -name '*.zip' 2>/dev/null | sed 's|^\./||')"