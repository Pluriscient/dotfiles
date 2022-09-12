if status is-interactive
    atuin init fish | source
    starship init fish | source
    zoxide init fish | source
    fish_config theme choose "Dracula"
    source $HOME/.profile
    if ! which code &> /dev/null
            
        eval (zellij setup --generate-auto-start fish | string collect)
    end        
    # Commands to run in interactive sessions can go here
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
eval /home/pluriscient/tools/conda/bin/conda "shell.fish" "hook" $argv | source
# <<< conda initialize <<<

conda deactivate
