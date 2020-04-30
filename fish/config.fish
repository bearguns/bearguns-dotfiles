if not functions -q fisher
    set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME ~/.config
    curl https://git.io/fisher --create-dirs -sLo $XDG_CONFIG_HOME/fish/functions/fisher.fish
    fish -c fisher
end

# Python + Homebrew for macOS
if test (uname -s) = "Darwin"
    set PATH /usr/local/opt/python/libexec/bin $PATH
    set PATH /usr/local/sbin $PATH
    set PATH /usr/local/bin $PATH
end

# Ruby Stuff
set PATH ~/.rbenv/bin $PATH
export RUBY_CONFIGURE_OPTS="--with-oppenssl-dir="(brew --prefix openssl@1.1)
rbenv init - | source

# Aliases for common operations
## Docker Aliases
alias dcup 'docker-compose up'
alias dcdown 'docker-compose down'
alias dps 'docker ps'
alias dimages 'docker images'

starship init fish | source

