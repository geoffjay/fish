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

# bobthefish settings
set -g theme_display_git yes
set -g theme_display_git_untracked yes
set -g theme_display_git_ahead_verbose yes
set -g theme_git_worktree_support yes
set -g theme_display_vagrant yes
set -g theme_display_docker_machine no
set -g theme_display_hg yes
set -g theme_display_virtualenv yes
set -g theme_display_ruby no
set -g theme_display_user yes
set -g theme_display_vi no
set -g theme_display_date no
set -g theme_display_cmd_duration yes
set -g theme_title_display_process yes
set -g theme_title_display_path no
set -g theme_title_use_abbreviated_path no
set -g theme_date_format "+%a %H:%M"
set -g theme_avoid_ambiguous_glyphs yes
set -g theme_powerline_fonts yes
set -g theme_nerd_fonts yes
set -g theme_show_exit_status yes
set -g default_user your_normal_user
set -g theme_color_scheme solarized
