#!/usr/bin/env sh

# the scripting-addition must be loaded manually if
# you are running yabai on macOS Big Sur. Uncomment
# the following line to have the injection performed
# when the config is executed during startup.
#
# for this to work you must configure sudo such that
# it will be able to run the command without password
#
# see this wiki page for information:
#  - https://github.com/koekeishiya/yabai/wiki/Installing-yabai-(latest-release)
#

# sudo yabai --load-sa
# yabai -m signal --add event=dock_did_restart action="sudo yabai --load-sa"

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Run NeoFetch
neofetch --config ~/Git/neofetch-settings/config.conf

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="sorin"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
#
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

export NVM_LAZY_LOAD=true
export NVM_COMPLETION=true
plugins=(zsh-nvm git extract z)

# PATH
export PATH="/usr/bin/local:/usr/local/bin/psql:/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:~/pear/bin:~/.composer/vendor/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/share/npm/lib/node_modules/grunt-cli/bin:/usr/sbin/apachectl:/usr/sbin:/usr/local/share/npm/bin:/usr/local/mongodb/bin:/usr/local/opt/ncurses/bin:/usr/local/php5/bin:/usr/local/bin/compass"
export PATH="/usr/local/bin:$PATH"
export PATH="$HOME/.node/bin:$PATH"
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/opt/php@8.0/bin:$PATH"
export PATH="/usr/local/opt/php@8.0/sbin:$PATH"
export PATH="/usr/local/opt/mpv-iina/bin:$PATH"
# export PATH="~/miniconda3/bin:$PATH"

# Reload
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.oh-my-zsh/custom/plugins/zsh-nvm/zsh-nvm.plugin.zsh
alias reload="source ~/.zshrc"

# AutoComplete
source ~/Git/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='mvim'
fi

# alias for sublime
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
# alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin"

# for those using edit
alias edit='subl'

# change to root
alias ~="cd ~"

# clear
alias c='clear'

# edit php.ini
alias phpini='sudo vim /usr/local/etc/php/8.0/php.ini'

# edit httpd.conf
# alias apacheconf='sudo vim /etc/apache2/httpd.conf'
alias apacheconf='sudo vim /usr/local/etc/httpd/httpd.conf'

# edit new httpd.conf
alias apachconfnew='sudo vim /usr/local/etc/httpd/httpd.conf'

# edit hosts
alias hosts='sudo vim /etc/hosts'

# edit this file
alias editzsh='sudo vim ~/Git/zshrc/.zshrc'

# edit user.conf
alias userconf='sudo vim /etc/apache2~.conf'

# edit httpd-vhosts.conf
alias vhosts='sudo vim /usr/local/etc/httpd/extra/httpd-vhosts.conf'

# apache logs
alias apachelogs="less +F /var/log/apache2/error_log"

# colored search in files
alias grep='grep --color=auto'

# keys
alias keys='pbcopy < ~/.ssh/id_rsa.pub'

# flush dns
alias flush='sudo ifconfig en0 down && sudo ifconfig en1 down && sudo ifconfig en2 down && sudo route flush && sudo ifconfig en0 up && sudo ifconfig en1 up && sudo ifconfig en2 up'

# edit zshell
alias zshrc='editzsh'

# find todos
alias todos='ack -n -R --nogroup "(TODO|FIND|FIX(ME)?):" --ignore-dir={composer,vendor,vendors,min,lib}'

# find by name
alias qfind="find . -name "

# mute
alias stfu='osascript -e "set volume output muted true"'

# copy pwd
alias cpwd='pwd|tr -d "\n"|pbcopy'
# alias cl='fc -e -|pbcopy'

# remove .git
alias ungit='find . -name '.git' -exec rm -rf {} \;'

# IP info
# alias ip='curl https://ipinfo.io/plain; echo'
# alias ip="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
alias scrapeip='curl https://icanhazip.com; echo'
alias ip='curl https://icanhazip.com; echo'
myip() {
    ip addr | awk '/inet / {sub(/\/.*/, "", $2); print $2}'
}

# computer power options
alias reboot='sudo /sbin/reboot'
alias shutdown='sudo /sbin/shutdown'
# alias poweroff='sudo /sbin/poweroff'
# alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
# alias halt='sudo /sbin/halt'

# git log detailed
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# git log files changed
alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# history
alias h='history'
alias clear_history='echo "" > ~/.zsh_history & exec $SHELL -l'

# git folder
alias gg='cd ~/Git'

# active connections
alias connections='lsof -i'

# alias for detailed, colored ls
alias ls='exa -lhaGF --icons --git'

# PIP
export PIP_REQUIRE_VIRTUALENV=false

# Alt Neo Fetch
alias neofetch2="neofetch \
--config off \
--block_range 1 8 \
--bold off \
--uptime_shorthand on \
--gtk_shorthand on \
--colors 4 1 8 8 8 7 \
"

# Run NeoFetch
alias neo="neofetch --config ~/Git/neofetch-settings/config.conf"

# Edit NeoFetch
alias editneo="vim ~/Git/neofetch-settings/config.conf"

# Edit vimrc
alias vimrc="vim ~/Git/vimrc/vimrc"

# Edit skhdrc
alias skhdrc="vim ~/Git/skhdrc/.skhdrc"

# Edit iTermocil
alias edititermocil="subl ~/.itermocil"

# Desktop Alias
alias desktop="cd ~/Desktop"

# Iterm Shell Integration
source ~/.iterm2_shell_integration.`basename $SHELL`
compctl -g '~/.itermocil/*(:t:r)' itermocil

# Now Playing
# alias nowplaying="sh ~/nowplaying/song.sh"

# Send Nowplaying to Slack
alias slackmusic="cd ~/Git/node-slack-fm-status && node run.js desmosthenes"
alias music="open -a 'Music'; open -a ~/Documents/Last.fm; cd ~/Git/node-slack-fm-status && node run.js desmosthenes"


alias communication="open -a 'Slack'; open -a 'Mimestream'; open -a 'Discord'; open -a 'Messages'"
# Close Finder Windows
alias finder-close="osascript -e 'tell application \"Finder\" to close every window'"

# Clean Brew
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor; brew missing; echo "\n Brewski Complete"; terminal-notifier -appIcon https://brew.sh/assets/img/homebrew-256x256.png -title "Homebrew" -message "Brewski Complete"'

# Display Weather
alias weather="curl wttr.in/nyc"

# Start the Day
alias communication="open -a 'Slack'; open -a 'Mimestream'; open -a 'Discord'; open -a 'Messages'"

# vTop
# alias top="vtop --theme wizard"
alias top="bpytop"
alias oldtop="/usr/bin/top"

# Check Active Connections
alias check-open-connection="sudo lsof -iTCP -sTCP:LISTEN -n -P"

# RIPGREP
alias rgweb="rg --type-add 'web:*.{html,css,scss,js,php}'"

# Reload Yabai
alias yabai-reload='launchctl kickstart -k "gui/${UID}/homebrew.mxcl.yabai"'

# Edit Yabairc
alias yabairc="sudo vim ~/Git/yabairc/.yabairc"

# Fuzzy Search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Z (Tracks most-used directories to make cd smarter)
. /usr/local/etc/profile.d/z.sh

# Servers
alias dobox="ssh marko@45.55.60.122"
alias archCakes="ssh marko@192.168.0.10"

# Override cmus with sudo
alias cmus="sudo cmus"

# Run PHP server quickly
alias dev="kill -9 $(lsof -i:9999 -t); php -S localhost:9999"

# Stats
alias stats="sudo powermetrics --samplers smc -i1 -n1"

# Python 3
alias python=python3

# Startup Common Projects
alias proj-mb4="itermocil mb4"
alias proj-lexichronic="itermocil lexichronic"
alias proj-badderink="itermocil badderink"
alias proj-albertobeer="itermocil albertobeer"
alias proj-nftnow="itermocil nftnow"
alias proj-nomadworks="itermocil nomadworks"
alias proj-good-apple="itermocil good-apple"
alias proj-lukes="itermocil lukes"
alias proj-unworldoceansday="itermocil unworldoceansday"
alias proj-fewocious="itermocil fewocious"
alias proj-bluestandard="itermocil bluestandard"
alias proj-upsl="itermocil upsl"
alias proj-lexichronicv4="itermocil lexichronicv4"
alias proj-lexiv4="itermocil lexiv4"

# NPM Token
alias NPM_TOKEN="95d25032-85a8-44d2-8a46-16b36203671b"

# Load NVM
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

###############
#### NOTES ####
###############

# Is Up? Check if site is up
# is-up --help

# Kill Processes - Run fkill without arguments to launch the interactive UI.
# fkill

# List NPM Globally Installed Packages
# npm list -g --depth 0

# List Process Using Port
# sudo lsof -i :9999

# Check Directory Files for Size, Sort By Size
# ncdu

# How to Get Past SIP & Not Being Able to Access Root
# sudo mount -uw / && killall Finder

# Git
# List total commits by author (sorted by commit count)
# git shortlog -sn

# List file change stats by author
# git log --author="Marko Bajlovic" --pretty=tformat: --numstat | awk '{inserted+=$1; deleted+=$2; delta+=$1-$2; ratio=deleted/inserted} END {printf "Commit stats:\n- Lines added (total)....  %s\n- Lines deleted (total)..  %s\n- Total lines (delta)....  %s\n- Add./Del. ratio (1:n)..  1 : %s\n", inserted, deleted, delta, ratio }' -

# Git Quick Stats
# git-quick-stats

# Google Lightspeed
# lighthouse https://marko.tech --view

# Check WIFI Passwords
# wifi-password
