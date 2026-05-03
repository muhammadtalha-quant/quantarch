if status is-interactive
    fastfetch
    if not set -q FLAVOUR
        set_prompt catppuccin_mocha
    else 
        set_prompt "$FLAVOUR"
    end
end
