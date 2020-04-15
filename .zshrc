# Path to your oh-my-zsh installation.
export ZSH=/Users/arbitrarily/.oh-my-zsh

# Run NeoFetch
neofetch --config ~/.config/neofetch/config.conf

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="honukai"

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
plugins=(git cloudapp node npm bower brew osx extract z composer)

# User configuration
export PATH="/usr/bin/local:/usr/local/bin/psql:/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/Users/arbitrarily/pear/bin:/Users/arbitrarily/.composer/vendor/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/share/npm/lib/node_modules/grunt-cli/bin:/usr/sbin/apachectl:/usr/sbin:/usr/local/share/npm/bin:/usr/local/mongodb/bin:/usr/local/opt/ncurses/bin:/usr/local/php5/bin:/Users/arbitrarily/Library/Python/2.7/bin"
# export MANPATH="/usr/local/man:$MANPATH"
# export PATH="$(brew --prefix homebrew/php/php72)/bin:$PATH"

# Reload
source $ZSH/oh-my-zsh.sh
source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
alias reload="source ~/.zshrc"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='vim'
else
    export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# alias for sublime
alias subl='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'

# for those using edit
alias edit='subl'

# change to root
alias ~="cd ~"

# clear
alias c='clear'

# top as htop
# alias top='htop'

# edit php.ini
alias phpini='sudo vim /usr/local/etc/php/7.3/php.ini'

# edit httpd.conf
alias apacheconf='sudo vim /etc/apache2/httpd.conf'

# edit new httpd.conf
alias apachconfnew='sudo vim /usr/local/etc/httpd/httpd.conf'

# edit hosts
alias hosts='sudo vim /etc/hosts'

# edit this file
alias editzsh='sudo vim ~/Git/zshrc/.zshrc'

# edit user.conf
alias userconf='sudo vim /etc/apache2/users/arbitrarily.conf'

# edit httpd-vhosts.conf
alias vhosts='sudo vim /private/etc/apache2/extra/httpd-vhosts.conf'

# apache logs
alias apachelogs="less +F /var/log/apache2/error_log"

# colored search in files
alias grep='grep --color=auto'

# keys
alias keys='pbcopy < ~/.ssh/id_rsa.pub'

# flush dns
alias flush='sudo ifconfig en0 down && sudo ifconfig en1 down && sudo ifconfig en2 down && sudo route flush && sudo ifconfig en0 up && sudo ifconfig en1 up && sudo ifconfig en2 up'

# edit zshell
# alias zshrc='sudo vim ~/.zshrc'
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
alias ip='curl https://ipinfo.io/plain; echo'
# alias ip="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# computer power options
alias reboot='sudo /sbin/reboot'
alias shutdown='sudo /sbin/shutdown'
alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
alias poweroff='sudo /sbin/poweroff'
# alias halt='sudo /sbin/halt'

# git log detailed
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# git log files changed
alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# history
alias h='history'

# git folder
alias gg='cd ~/Git'

# active connections
alias connections='lsof -i'

# alias for detailed, colored ls
alias ls='exa -lhaG'

# PATH
export PATH="/usr/local/bin:$PATH"

# PIP
export PIP_REQUIRE_VIRTUALENV=false

# MiniConda
# export PATH="/Users/arbitrarily/miniconda3/bin:$PATH"

# Node
export PATH="$HOME/.node/bin:$PATH"

# Check WIFI Passwords
# wifi-password

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
alias neo="neofetch --config ~/.config/neofetch/config.conf"

# Edit NeoFetch
alias editneo="vim /Users/arbitrarily/Git/neofetch-settings/config.conf"

# Startup Common Projects
alias proj-disrupt="itermocil disrupt"
alias proj-civil="itermocil civil"
alias proj-joincivil="itermocil joincivil"
alias proj-ethereal="itermocil ethereal"
alias proj-etherinthenews="itermocil etherinthenews"
alias proj-lineage="itermocil lineage"
alias proj-clansky="itermocil clansky"
alias proj-special="itermocil special"
alias proj-jwa="itermocil jwa"
alias proj-pegasys="itermocil pegasys"
alias proj-groundfloor="itermocil groundfloor"
alias proj-kaleido="itermocil kaleido"
alias proj-usesofcbd="itermocil usesofcbd"
alias proj-setle-site="itermocil setle-site"
alias proj-dumplinghouse-media="itermocil dumplinghouse-media"
alias proj-dumplinghouse-shop="itermocil dumplinghouse-shop"
alias proj-dumplinghouse-labs="itermocil dumplinghouse-labs"
alias proj-dumplinghouse-studios="itermocil dumplinghouse-studios"
alias proj-openlaw="itermocil openlaw"
alias proj-skypod="itermocil skypod"
alias proj-nomadworks="itermocil nomadworks"
alias proj-oceanic="itermocil oceanic"
alias proj-ujo="itermocil ujo"
alias proj-mb4="itermocil mb4"
alias proj-351="itermocil 351studios"
alias proj-fwbw="itermocil fwbw"
alias proj-nbtv="itermocil nbtv"
alias proj-drumg="itermocil drumg"
alias proj-balanc3="itermocil balanc3"
alias proj-consensys-sports="itermocil consensys-sports"
alias proj-allinfra="itermocil allinfra"
alias proj-blockchain-ireland="itermocil blockchain-ireland"
alias proj-ansero="itermocil ansero"
alias proj-consensys-health="itermocil consensys-health"
alias proj-metamask="itermocil metamask"
alias proj-metamask-wordpress="itermocil metamask-wordpress"
alias proj-tfx="itermocil tfx"
alias proj-good-apple="itermocil good-apple"
alias proj-day-one-ventures="itermocil day-one-ventures"
alias proj-lexichronic="itermocil lexichronic"
alias proj-miroculus="itermocil miroculus"
alias proj-zacklevandov="itermocil zack"
alias proj-made-you-feel="itermocil made-you-feel"
alias proj-nuristay="itermocil nuristay"
alias proj-breakaway="itermocil breakaway"
alias proj-one-planet-one-future="itermocil one-planet-one-future"

# Edit iTermocil
alias edititermocil="subl ~/.itermocil"

# Iterm Shell Integration
source ~/.iterm2_shell_integration.`basename $SHELL`
compctl -g '~/.itermocil/*(:t:r)' itermocil

# Google Search
alias define='googler -n 2 --colors bjdxxy define'
alias g='googler -n 11 -t m18 --colors bjdxxy'
alias gn='googler -N -n 11 -t d1 --colors bjdxxy'

# Now Playing
alias nowplaying="sh ~/song.sh"

# Send Nowplaying to Slack
alias slackmusic="cd ~/Git/node-slack-fm-status && node run.js desmosthenes"

# Close Finder Windows
alias finder-close="osascript -e 'tell application \"Finder\" to close every window'"

# Clean Brew
alias brewski='brew update && brew upgrade && brew cleanup; brew doctor; brew missing; echo "Brewski Complete" | terminal-notifier -sound default -appIcon https://brew.sh/assets/img/homebrew-256x256.png -title "Homebrew"'

# Display Weather
alias weather="curl wttr.in/nyc"

# Load NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Start the Day
alias communication="open -a 'Slack' && open -a 'Thunderbird' && open -a 'Discord' && open -a 'Telegram' && open -a 'Messages'"

# Autocompletion
eval "$(grunt --completion=zsh)"

# vTop
alias top="vtop --theme wizard"
alias oldtop="/usr/bin/top"

# Check Active Connections
alias check-open-connection="sudo lsof -iTCP -sTCP:LISTEN -n -P"

# SQL Dump Script
# sh dump.sh SERVERUSERNAME SERVERIP DBNAME DBUSERNAME DBPASSWORD
alias sqldump="sh dump.sh SERVERUSERNAME SERVERIP DBNAME DBUSERNAME DBPASSWORD"

# RIPGREP
alias rgweb="rg --type-add 'web:*.{html,css,js,php}'"

# Reload Yabai
alias reload-yabai='launchctl kickstart -k "gui/${UID}/homebrew.mxcl.yabai"'

# Edit Yabairc
alias yabairc="sudo vim ~/Git/yabairc/.yabairc"

# AR Stuff
export PATH=$PATH:/Users/arbitrarily/Downloads/usdpython_0/USD
export PYTHONPATH=$PYTHONPATH:/Users/arbitrarily/Downloads/usdpython_0/USD

# PHP Stuff
export PATH="/usr/local/opt/php@7.3/bin:$PATH"
export PATH="/usr/local/opt/php@7.3/sbin:$PATH"

# Fuzzy Search
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Z (Tracks most-used directories to make cd smarter)
. /usr/local/etc/profile.d/z.sh

# Servers
alias dobox="ssh marko@45.55.60.122"
alias archCakes="ssh marko@192.168.0.10"
