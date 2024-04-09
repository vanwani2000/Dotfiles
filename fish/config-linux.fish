if type -q eza
    alias ld "eza -lD"
    alias lf "eza -lf --color=always | grep -v /"
    alias ll "eza -al --group-directories-first"
    alias ls "eza -alf --color=always --sort=size | grep -v /"
    alias lt "ll -T --icons"
end
