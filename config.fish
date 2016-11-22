# Load functions
. "$HOME/.config/fish/functions/aliases.fish"
. "$HOME/.config/fish/functions/export.fish"

# virtualenv support in fish
set -g VIRTUALFISH_COMPAT_ALIASES
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/virtual.fish"
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/auto_activation.fish"
. "$HOME/.config/fish/plugins/virtualfish/virtualfish/global_requirements.fish"

# Make su launch fish too
function su
    /bin/su --shell=/usr/bin/fish $argv
end

# Additional eval calls
eval (python -m virtualfish)
