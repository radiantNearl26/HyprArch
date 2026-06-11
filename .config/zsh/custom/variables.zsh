#
# ~/.zshenv
#

# zsh config directory
export ZDOTDIR="$HOME/.config/zsh"
export ZSH="$ZDOTDIR/ohmyzsh"
#-----------------------------------#
export ZSHRC="$ZDOTDIR/.zshrc"
export ZLOGIN="$ZDOTDIR/.zlogin"
export ZLOGOUT="$ZDOTDIR/.zlogout"
export ZPROFILE="$ZDOTDIR/.zprofile"
export HISTFILE="$ZDOTDIR/.zhistory"

# zsh custom config directory
export ZCUSDIR="$HOME/.config/zsh/custom"
#-----------------------------------#
export ALIASFILE="$ZCUSDIR/aliases.zsh"
# export ENVFILE="$ZCUSDIR/variables.zsh"
export COMPFILE="$ZCUSDIR/completion.zsh"
export THEMESFILE="$ZCUSDIR/theming.zsh"
export BINDSFILE="$ZCUSDIR/keybinds.zsh"
# export HISTFILE="$ZCUSDIR/history.zsh"

# app config directories
export NVIMDIR="~/.config/nvim/"
export ROFIDIR="~/.config/rofi/"
export STARTDIR="~/.config/startpage/"
export GTK3DIR="~/.config/gtk-3.0/"
export GTK4DIR="~/.config/gtk-4.0/"

# misc. configurations (oh-my-zsh)
export ARCHFLAGS="-arch x86_64"

# New sudo prompt
export SUDO_PROMPT=' Enter Password: '

# Directory for system directories
export XDG_CONFIG_DIR="$HOME/.config"
export XDG_CACHE_DIR="$HOME/.cache"

# Directory for compinit cache
export ZSH_CACHE_DIR="$XDG_CACHE_DIR/zsh"
export ZSH_COMPDUMP="$ZDOTDIR/zsh-compdump/.zcompdump"

# Default apps
export EDITOR="nvim"
# export BROWSER="ungoogled-chromium-bin" # INFO: Disabled due to stability issues.
export BROWSER="brave" 
export PAGER="bat"
export TERMINAL="alacritty"

# Default language and locale
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Export directories to $PATH
export PATH=$PATH:~/.local/bin
export PATH=$PATH:/usr/local/bin
export PATH=$PATH:~/.scripts

# Default permissions for newly created files and directories
umask 022 # User Mask: user = rwe && else = re

# Tweaks for Gaming
RADV_PERFTEST=aco
