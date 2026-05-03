complete -c compress -l help -f -d 'Show usage'
# First arg: suggest output archive name with format hints
complete -c compress -f -n "test (count (commandline -opc)) -lt 2" \
    -d 'Output archive (e.g. out.tar.gz, out.zip, out.tar.xz)'
# Subsequent args: any file/dir
complete -c compress -F -n "test (count (commandline -opc)) -ge 2"