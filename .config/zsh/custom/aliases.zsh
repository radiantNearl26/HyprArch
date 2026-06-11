# Basic Commands
#

alias nv="nvim"
alias nm="nmtui"
alias fm="ranger"
alias smile="it.mijorus.smile" #can't use smile to exec since its a flatpak maybe (need to use full package name)
alias cls="clear && colorscript -e "crunchbang-mini""
alias q="exit"
alias pk="pkill -e"
alias zx="start-hyprland"
alias hypr="start-hyprland"
alias ff="fastfetch"
alias nf="neofetch"
alias rb="reboot"
alias lls="exa --long --all -bgHhiSmg --group-directories-first"
alias tls="exa --tree --icons"
alias pb="systemctl poweroff"
alias wgu="wg-quick up US-12"
alias wgd="wg-quick down US-12"
alias ez="easyeffects --gapplication-service"
alias show-hist="cat $HISTFILE | fzf"
alias fzf-preview="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"

alias launch="hyprctl dispatch exec"
alias pkill="pkill -e"

alias tt="echo "0" | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo"
alias cpy="venv/bin/python"
alias apy="source venv/bin/activate"

alias mount-oth="sudo mkdir /run/media/Asmit/Others && sudo mount /dev/sda1 /run/media/Asmit/Others"
alias mount-bkp="sudo mkdir /run/media/Asmit/Backup && sudo mount /dev/sda2 /run/media/Asmit/Backup"

# A safer approach to rm
#
alias rm="trash-put"
alias rmlist="trash-list"
alias rmres="trash-restore"
alias rmdel="trash-rm"

#
# quick open text files using neovim
#
alias nvhy="nvim $HOME/.config/hypr/hyprsource/"
alias nvzs="nvim $HOME/.config/zsh/custom/"
alias nvconf="nvim $HOME/.config/"
alias nvnvim="nvim $HOME/.config/nvim/"
alias nvsh="nvim $HOME/.scripts/"

# Yay (along with pacman) Commands
# NOTE: Will do later:


# Dotfiles (git) Commands
#

alias dot="git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME""
alias dadd="dot add" # add file contents to the index
alias dcom="dot commit -m" # save changes to the local repository
alias damend="dot commit --amend" # undo the last commit and edit the commit message
alias dpush="dot push -u origin main" # push changes to the main branch of the remote repository

alias ddiff="dot diff" # show changes between commits & commit and working tree
alias ddiffs="dot diff --staged" # show changes between staged changes and last commit
alias dr="dot restore" # discard changes in working tree
alias drs="dot restore --staged" # unstage but keep in working tree (keep changes)

alias dstat="dot status" # show the working tree status
alias dlog='dot log --pretty=format:"%h - %an, %ar: %s" --graph HEAD' # show commit logs
alias dshow="dot show" # show info about a commit
alias dfiles="dot ls-files" # list all files in the index

alias dmv="dot mv" # move/rename a file, a directory, or a symlink
alias drm="dot rm" # remove from both index and working tree
alias drmc="dot rm --cached" # remove from index but keep in working tree


# Startpage (git) Commands
#

alias start='git --git-dir="$HOME/.startfiles/" --work-tree="$HOME/.config/startpage/"'
alias scom='start commit -m'
alias samend='start commit --amend'
alias sadd='start add'
alias sstat='start status'
alias slog='start log --pretty=format:"%h - %an , %ar : %s" --graph HEAD'

# alias spparm='start push -u origin termux-xfce'
alias spush='start push -u origin main'

alias srh='start reset HEAD'
alias smv='start mv'
alias scout='start checkout --'

alias srs='start restore --staged'
alias sr='start restore --'

alias slsname='start ls-files --name-only'
alias slsdel='start ls-files -d --name-only'
alias slsmod='start ls-files -m --name-only'
alias slsignore='start ls-files -i --name-only'
alias slsstaged='start ls-files -s --name-only'

alias sfiles='ls --group-directories-first --color=auto -Rd $(start ls-tree -r $(start branch | grep * | cut -d " " -f2) --name-only)'
alias sdir='ls --group-directories-first --color=auto -d $(start ls-tree -dr $(start branch | grep * | cut -d " " -f2) --name-only)'
