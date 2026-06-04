function pkg --description "A function to manage packages in Fish shell"
    set -l options i/install r/remove l/list d/driver u/update h/help
    set -l exclusive i,r,l,u
    argparse --exclusive $exclusive $options -- $argv
    or return 1
    
end