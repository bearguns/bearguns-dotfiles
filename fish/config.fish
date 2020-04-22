if test (uname -s) = "Darwin"
    set PATH /usr/local/opt/python/libexec/bin $PATH
    set PATH /usr/local/sbin $PATH
    set PATH /usr/local/bin $PATH
end

starship init fish | source

