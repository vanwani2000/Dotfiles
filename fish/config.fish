if status is-interactive
    # Commands to run in interactive sessions can go here
    set fish_greeting ""
    set -gx TERM xterm-256color

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

    alias x "cd /mnt/e"

    set -gx EDITOR nvim
    set fish_cursor_default_block
    set fish_cursor_insert line

    switch (uname)
        case Linux
            source (dirname (status --current-filename))/config-linux.fish
    end
end
