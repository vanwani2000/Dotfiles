if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting ""
    set -gx TERM xterm-256color

    # color for command in prompt
    set fish_color_command green --bold
    # color for file path after command or keyword
    set fish_color_valid_path purple --bold --underline
    set fish_color_selection green

    #escape through Ctrl + c from insert mode to normal mode in prompt
    bind -M insert -m default \cc cancel repaint-mode

    # theme
    set -g theme_color_scheme terminal-dark
    set -g fish_prompt_pwd_dir_length 1
    set -g theme_display_user yes
    set -g theme_hide_hostname no
    set -g theme_hostname always
    alias g git
    command -qv nvim && alias vim nvim

    set -x BAT_THEME

    set -gx PATH bin $PATH
    set -gx PATH ~/bin $PATH
    set -gx PATH ~/.local/bin $PATH

    alias ide "~/.config/tmux/scripts/ide.sh"
    alias vde "~/.config/tmux/scripts/vde.sh"
    alias kill "pkill -f tmux"
    alias download "cd /mnt/c/Users/DELL/Downloads"

    alias x "cd /mnt/e"

    set -gx EDITOR nvim
    set fish_cursor_default_block
    set fish_cursor_insert line

    switch (uname)
        case Linux
            source (dirname (status --current-filename))/config-linux.fish
    end
end
