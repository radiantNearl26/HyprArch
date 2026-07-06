#
# ~/.zshrc
#

# Important: zsh Initialization
autoload -Uz compinit
precmd_functions=""
compinit

# Source custom configuration files
source $ZDOTDIR/custom/variables.zsh
source $ZDOTDIR/custom/completion.zsh
source $ZDOTDIR/custom/aliases.zsh
source $ZDOTDIR/custom/history.zsh
source $ZDOTDIR/custom/keybinds.zsh
source $ZDOTDIR/custom/theming.zsh

# Plugins
plugins=(alias-finder aliases archlinux history git npm zsh-autosuggestions zsh-syntax-highlighting sudo systemd)
zstyle ':omz:plugins:alias-finder' autoload yes
source $HOME/.config/zsh/ohmyzsh/oh-my-zsh.sh

# Enable oh-my-posh prompt
# Only run oh-my-posh if NOT in VS Code
if [[ "$TERM_PROGRAM" != "vscode" ]]; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/oh-my-posh/powerlevel10k_lean.omp.json)"
fi

# Conda Initialization
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup

# Help command
autoload -Uz run-help run-help-git run-help-ip run-help-openssl run-help-p4 run-help-sudo run-help-svk run-help-svn
(( ${+aliases[run-help]} )) && unalias run-help
alias help=run-help

# INIT Display for console:
[[ "$TERM_PROGRAM" == "vscode" ]] && . "$(code --locate-shell-integration-path zsh)"
cls


