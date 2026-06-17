#       __ __ ____ ____ ______ ____   ___ __  __
#      / // //  _// __//_  __// __ \ / _ \\ \/ /
#     / _  /_/ / _\ \   / /  / /_/ // , _/ \  / 
#    /_//_//___//___/  /_/   \____//_/|_|  /_/  
# NOTE: This is just the settings, not the actual history file. The history file is located at $HISTFILE.

# History retention values
SAVEHIST=100000 #100k
HISTSIZE=100000 #same as above

# History for recently visited directories (DIRSTACK) (walk is a better option, tho it works differently)
# autoload -Uz add-zsh-hook
# DIRSTACKFILE="${XDG_CACHE_HOME:-$HOME/.cache}/zsh/dirs"

# if [[ -f "$DIRSTACKFILE" ]] && (( ${#dirstack} == 0 )); then
# 	dirstack=("${(@f)"$(< "$DIRSTACKFILE")"}")
# 	[[ -d "${dirstack[1]}" ]] && cd -- "${dirstack[1]}"
# fi
# chpwd_dirstack() {
# 	print -l -- "$PWD" "${(u)dirstack[@]}" > "$DIRSTACKFILE"
# }
# add-zsh-hook -Uz chpwd chpwd_dirstack
# DIRSTACKSIZE='20'

# setopt AUTO_PUSHD PUSHD_SILENT PUSHD_TO_HOME
# setopt PUSHD_IGNORE_DUPS ## Remove duplicate entries
# setopt PUSHD_MINUS ## This reverts the +/- operators.

# Setup for prompt history
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

# Shared history
setopt share_history
#----------------------------#
setopt hist_expire_dups_first
setopt hist_find_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_no_store
setopt hist_reduce_blanks
setopt hist_save_no_dups
setopt hist_verify
setopt inc_append_history
setopt no_hist_allow_clobber
setopt no_hist_beep
setopt share_history
