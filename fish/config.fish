if test (uname -s) = "Darwin"
    set PATH /usr/local/opt/python/libexec/bin $PATH
    set PATH /usr/local/sbin $PATH
    set PATH /usr/local/bin $PATH
end

if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

starship init fish | source

