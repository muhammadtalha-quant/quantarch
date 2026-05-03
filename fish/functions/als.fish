function als --description "List archive content in tree"
    if test -z "$argv[1]" -o "$argv[1]" = --help
        printf "Usage: als <archive>\n\n"
        printf "Lists archive contents without extracting.\n\n"
        printf "Supported formats:\n"
        printf "  *.tar, *.tar.gz, *.tar.xz, *.tar.bz2\n"
        printf "  *.zip\n"
        return 0
    end

    if not test -f $argv[1]
        printf "als: '%s' is not a file\n" $argv[1]
        return 1
    end

    switch $argv[1]
        case '*.tar' '*.tar.gz' '*.tar.xz' '*.tar.bz2' ; tar -tvf $argv[1]
        case '*.zip'                                     ; unzip -l $argv[1]
        case '*'
            printf "als: unknown format '%s'\n" $argv[1]
            return 1
    end
end
