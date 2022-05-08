function fish_prompt --description 'Write out the prompt'
    echo -n -s [(uptime | cut -d "," -f1 | cut -d "p" -f2 | sed 's/^ *//g')] ' ' (hostname | grep -o  "[^\.]*" | head -1) ' ' (set_color $color_cwd) (prompt_pwd) $normal (fish_vcs_prompt) ' ' \$ ' '
end
