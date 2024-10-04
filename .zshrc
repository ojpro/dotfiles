# ------------- PATH CONFIGURATION -------------
# If you come from bash, you might need to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# ------------- THEME CONFIGURATION -------------
# Set name of the theme to load
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# ------------- CASE & COMPLETION SETTINGS -------------
# Uncomment to enable case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment to use hyphen-insensitive completion.
# HYPHEN_INSENSITIVE="true"

# ------------- AUTO-UPDATE SETTINGS -------------
# Uncomment to modify auto-update behavior
# zstyle ':omz:update' mode disabled  # Disable automatic updates
# zstyle ':omz:update' mode auto      # Update automatically without asking
# zstyle ':omz:update' mode reminder  # Just remind me to update

# Uncomment to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# ------------- USER EXPERIENCE -------------
# Uncomment if pasting URLs and text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment to disable colors in `ls`.
# DISABLE_LS_COLORS="true"

# Uncomment to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Enable command auto-correction.
# ENABLE_CORRECTION="true"

# Show red dots while waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# ------------- PERFORMANCE OPTIMIZATION -------------
# Speed up large repositories by disabling dirty check for untracked files.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# ------------- HISTORY CONFIGURATION -------------
# Show timestamp in the history.
# HIST_STAMPS="mm/dd/yyyy"

# ------------- PLUGINS -------------
# Enable desired plugins.
plugins=(git zsh-autosuggestions zsh-syntax-highlighting magic-enter)

# Load oh-my-zsh framework.
source $ZSH/oh-my-zsh.sh

# ------------- CUSTOM USER CONFIGURATION -------------
# Preferred editor for local and remote sessions.
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# ------------- ALIASES -------------
### Custom Aliases ###

# Programs
alias vim=nvim
alias svim="sudo nvim"
alias cat=batcat
alias btop="bpytop"
alias fd="fdfind"
alias chrome="google-chrome"
alias stow="stow -t $HOME"
alias cpuinfo='lscpu'
alias copy="xclip -sel clip"
alias wget='wget -c'

# System management
alias _=sudo
alias start="sudo systemctl start"
alias stop="sudo systemctl stop"
alias restart="sudo systemctl restart"
alias disable="sudo systemctl disable"
alias status="systemctl status"
alias zshconfig="nvim ~/.zshrc"
alias search="apt search"
alias services="systemctl --type=service --state=running"

# Date & Time
alias now='date +"%T"'
alias nowdate='date +"%d-%m-%Y"'

# Safety confirmations
alias mv='mv -i'
alias cp='cp -i'
alias ln='ln -i'
alias rm='rm -I --preserve-root'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'

# Network
alias ports='netstat -tulanp'
alias myip="wget -qO - icanhazip.com"

# Performance monitoring
alias meminfo='free -m -l -t -h'
alias psmem='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3 | head -10'

# General navigation
alias rmf="rm -rf"
alias ls='ls --color=auto'
alias ll='ls -la'
alias paths='echo -e ${PATH//:/\\n}'
alias ..='cd ..'
alias ...='cd ../../../'
alias ....='cd ../../../../'

# Programming
alias pat="php artisan test"
alias parl="php artisan route:list"
alias sail='[ -f sail ] && sh sail || sh vendor/bin/sail'
alias phpstan='[ -f ./vendor/bin/phpstan ] && ./vendor/bin/phpstan || echo "phpstan not found"'
alias pa='php artisan'
alias pac='php artisan optimize:clear'

# ------------- ENVIRONMENT INITIALIZATION -------------
# Conda initialization
__conda_setup="$('/home/ojpro/Apps/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/ojpro/Apps/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/ojpro/Apps/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/ojpro/Apps/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup

# pnpm setup
export PNPM_HOME="/home/ojpro/.local/share/pnpm"

case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# zoxide
eval "$(zoxide init zsh)"

# fzf key bindings and fuzzy completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# fd-based file finding for fzf
export FZF_DEFAULT_COMMAND="fdfind --hidden --strip-cwd-prefix --exclude .git"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fdfind --type=d --hidden --strip-cwd-prefix --exclude .git"

_fzf_compgen_path() {
  fdfind --hidden --exclude .git . "$1"
}
_fzf_compgen_dir() {
  fdfind --type=d --hidden --exclude .git . "$1"
}

# Improve Git with fzf
source ~/Apps/fzf-git/fzf-git.sh

# ------------- HISTORY SETTINGS -------------
# Share history and set history options
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# History search with arrow keys
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward
