function fish_prompt
	set last_status $status
    set_color $fish_color_cwd
    printf '%s' (prompt_pwd)
    set_color normal
    if set -q VIRTUAL_ENV
        set_color white
        printf ' (%s)' (basename "$VIRTUAL_ENV")
        set_color normal
    end
    printf '%s ' (__fish_git_prompt)
    set_color normal
end
