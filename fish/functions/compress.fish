function compress --description "Make archives"
    if test -z "$argv[1]" -o "$argv[1]" = --help
        printf "Usage: compress <archive> <source> [source ...]\n\n"
        printf "Arguments:\n"
        printf "  archive    Output archive filename — extension determines format\n"
        printf "  source     One or more files or directories to compress\n\n"
        printf "Supported formats:\n"
        printf "  *.tar        Uncompressed tape archive\n"
        printf "  *.tar.gz     Gzip-compressed archive\n"
        printf "  *.tar.xz     XZ-compressed archive (best compression)\n"
        printf "  *.zip        Zip archive\n\n"
        printf "Examples:\n"
        printf "  compress backup.tar.gz file.txt myfolder/\n"
        printf "  compress project.zip src/ README.md\n"
        return 0
    end

    if test (count $argv) -lt 2
        printf "compress: at least one source required\n"
        printf "Run 'compress --help' for usage\n"
        return 1
    end

    set -l dest $argv[1]
    set -l sources $argv[2..-1]

    switch $dest
        case '*.tar'     ; tar -cvf  $dest $sources
        case '*.tar.gz'  ; tar -cvzf $dest $sources
        case '*.tar.xz'  ; tar -cvJf $dest $sources
        case '*.zip'     ; zip -r    $dest $sources
        case '*'
            printf "compress: unknown format '%s'\nRun 'compress --help' for usage\n" $dest
            return 1
    end
end
