if test (uname -s) = "Darwin"
    set PATH /usr/local/bin $PATH
    set PATH /usr/local/opt/python/libexec/bin $PATH
end

starship init fish | source
