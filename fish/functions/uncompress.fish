function uncompress --description "Extract archives"
    if test -z "$argv[1]" -o "$argv[1]" = --help
        printf "Usage: uncompress <archive> [destination]\n\n"
        printf "Arguments:\n"
        printf "  archive      Path to the archive file to extract\n"
        printf "  destination  Optional folder to extract into (created if missing)\n"
        printf "               Defaults to current directory if not specified\n\n"
        printf "Supported formats:\n"
        printf "  *.tar        Uncompressed tape archive\n"
        printf "  *.tar.gz     Gzip-compressed archive\n"
        printf "  *.tar.xz     XZ-compressed archive\n"
        printf "  *.zip        Zip archive\n\n"
        printf "Examples:\n"
        printf "  uncompress archive.tar.gz\n"
        printf "  uncompress archive.zip ~/projects/myfolder\n"
        return 0
    end

    set -l file $argv[1]
    set -l dest .
    if test (count $argv) -ge 2
        set dest $argv[2]
        mkdir -p $dest
    end

    if not test -f $file
        printf "extract: '%s' is not a file\n" $file
        return 1
    end

    switch $file
        case '*.tar'     ; tar -xvf  $file -C $dest
        case '*.tar.gz'  ; tar -xvzf $file -C $dest
        case '*.tar.xz'  ; tar -xvJf $file -C $dest
        case '*.zip'     ; unzip $file -d $dest
        case '*'
            printf "extract: unknown format '%s'\n" $file
            return 1
    end
end
