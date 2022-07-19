if status is-interactive
    atuin init fish | source
    starship init fish | source
    source $HOME/.profile
    # Commands to run in interactive sessions can go here
end
