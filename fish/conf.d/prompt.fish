function set_prompt
    set -eg STARSHIP_CONFIG 
    set -eU FLAVOUR
    if test -z "$argv[1]"
        set -Ux FLAVOUR (eza -goh --icons --only-dirs --show-symlinks --git ~/.config/starship | fzf)
    else
        set -Ux FLAVOUR "$argv[1]"
    end
    if set -q FLAVOUR
        set STARSHIP_PROMPT $FLAVOUR
        set -gx STARSHIP_CONFIG ~/.config/starship/$STARSHIP_PROMPT/prompt.toml
    end
    starship init fish | source
end
