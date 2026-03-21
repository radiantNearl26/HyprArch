#
# Basic Commands
#

alias nv="nvim"
alias nm="nmtui"
alias fm="ranger"
alias smile="it.mijorus.smile" #can't use smile to exec since its a flatpak maybe (need to use full package name)
alias ct="cointop"
alias cls="clear && colorscript -e "crunchbang-mini""
alias q="exit"
alias pk="pkill -e"
alias zx="start-hyprland"
alias hypr="start-hyprland"
alias ff="fastfetch"
alias nf="neofetch"
alias rb="reboot"
alias ls="lss"
alias lss="exa --long --all -bgHhiSmg --group-directories-first"
alias pb="systemctl --poweroff"
alias wgu="wg-quick up US-12"
alias wgd="wg-quick down US-12"
alias ez="easyeffects --gapplication-service"

alias launch="hyprctl dispatch exec"
alias pkill="pkill -e"

alias tt="echo "0" | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo"
alias cpy="venv/bin/python"
alias apy="source venv/bin/activate"

alias mount-oth="sudo mkdir /run/media/Asmit/Others && sudo mount /dev/sda1 /run/media/Asmit/Others"
alias mount-bkp="sudo mkdir /run/media/Asmit/Backup && sudo mount /dev/sda2 /run/media/Asmit/Backup"

#
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

#
# Yay (along with pacman) Commands
# NOTE: Will do later:


#
# Dotfiles (git) Commands
#

alias dot="git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME""
alias dcom="dot commit -m"
alias damend="dot commit --amend"
alias dadd="dot add"
alias dstat="dot status"
alias dlog='dot log --pretty=format:"%h - %an, %ar: %s" --graph HEAD'

alias dpush="dot push -u origin main"
# alias dparm='dot push -u origin termux-xfce'

alias drh="dot reset HEAD"
alias dmv="dot mv"
alias dcout="dot checkout --"
alias ddiff="dot diff"

alias drs="dot restore --staged"
alias dr="dot restore --"

alias dlsname="dot ls-files --name-only"
alias dlsdel="dot ls-files -d --name-only"
alias dlsmod="dot ls-files -m --name-only"
alias dlsignore="dot ls-files -i --name-only"
alias dlsstaged="dot ls-files -s --name-only"

alias dfiles="ls --group-directories-first --color=auto -Rd $(dot ls-tree -r $(dot branch | grep \* | cut -d " " -f2) --name-only)"
alias ddir="ls --group-directories-first --color=auto -d $(dot ls-tree -dr $(dot branch | grep \* | cut -d " " -f2) --name-only)"

#
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
