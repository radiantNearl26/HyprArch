#     ___    __    ____ ___    ____ ____ ____
#    / _ |  / /   /  _// _ |  / __// __// __/
#   / __ | / /__ _/ / / __ | _\ \ / _/ _\ \  
#  /_/ |_|/____//___//_/ |_|/___//___//___/  
#                                              

alias nv="nvim"
alias nm="nmtui"
alias fm="ranger"
alias cls="clear && colorscript -e "crunchbang-mini""
alias q="exit"
alias zx="start-hyprland"
alias hypr="start-hyprland"
alias ff="fastfetch"
alias nf="neofetch"
alias rb="reboot"
alias lls="exa --long --all -bgHhiSmg --group-directories-first"
alias tls="exa --tree --icons always"
alias pb="systemctl poweroff"
alias ez="easyeffects --service-mode"
alias show-hist="cat $HISTFILE | fzf"
alias fzf-preview="fzf --preview 'bat --color=always --style=numbers --line-range=:500 {}'"
alias launch="hyprctl dispatch exec"
alias tt="echo "0" | sudo tee /sys/devices/system/cpu/intel_pstate/no_turbo"

# Python Virtual Environment Commands (use conda instead)
# alias cpy="venv/bin/python"
# alias apy="source venv/bin/activate"
alias conda-activate="conda activate ml-default"
alias conda-deactivate="conda deactivate"

# Manually mount external drives
alias mount-oth="sudo mkdir /run/media/Asmit/Others && sudo mount /dev/sda1 /run/media/Asmit/Others"
alias mount-bkp="sudo mkdir /run/media/Asmit/Backup && sudo mount /dev/sda2 /run/media/Asmit/Backup"
alias mount-files="sudo mkdir /run/media/Asmit/Files && sudo mount /dev/nvme0n1p3 /run/media/Asmit/Files"
alias mount-os="sudo mkdir /run/media/Asmit/OS && sudo mount /dev/nvme0n1p1 /run/media/Asmit/OS"

# A safer approach to rm (trash-put)
alias rm="trash-put"
alias rmlist="trash-list"
alias rmres="trash-restore"
alias rmdel="trash-rm"

# Quick open text files using neovim
alias nvhy="nvim $HOME/.config/hypr/hyprsource/"
alias nvzs="nvim $HOME/.config/zsh/custom/"
alias nvconf="nvim $HOME/.config/"
alias nvnvim="nvim $HOME/.config/nvim/"
alias nvsh="nvim $HOME/.scripts/"

# Dotfiles (git) Commands
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
