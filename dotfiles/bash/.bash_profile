# .bash_profile -*- mode: sh -*-

# Load login settings and environment variables
if [[ -f ~/.profile ]]; then
    # shellcheck source="/dev/null" # because it does not exists on my current inst
  source ~/.profile
fi

# Load interactive settings
if [[ -f ~/.bashrc ]]; then
  # shellcheck source=".bashrc"
  source ~/.bashrc
fi
