# Path to your oh-my-zsh installation.
export ZSH=/Users/arbitrarily/.oh-my-zsh

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
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git cloudapp node npm bower brew osx extract z composer)

# User configuration

export PATH="/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/bin:/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin:/Users/arbitrarily/pear/bin:/Users/arbitrarily/.composer/vendor/bin:/usr/local/share/npm/bin:/usr/local/bin:/usr/local/mysql/bin:/usr/local/share/npm/lib/node_modules/grunt-cli/bin:/usr/sbin/apachectl:/usr/sbin:/usr/local/opt/php56/libexec/apache2:/usr/local/share/npm/bin:/usr/local/mongodb/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

source ~/.oh-my-zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

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
alias top='htop'

# edit php.ini
alias phpini='sudo vim /usr/local/etc/php/5.6/php.ini'

# edit httpd.conf
alias apacheconf='sudo vim /etc/apache2/httpd.conf'

# edit hosts
alias hosts='sudo vim /etc/hosts'

# edit user.conf
alias userconf='sudo vim /etc/apache2/users/arbitrarily.conf'

# edit httpd-vhosts.conf
alias vhosts='sudo vim /private/etc/apache2/extra/httpd-vhosts.conf'

# apache logs
alias apachelogs="less +F /var/log/apache2/error_log"

# colored search in files
alias grep='grep --color=auto'

# # common projects
alias lexi='cd /Users/arbitrarily/Git/lexichronic-v3/'
alias aggro='cd /Users/arbitrarily/Git/datnexus'
alias roses='cd /Users/arbitrarily/Git/roserenegades'
alias lexisass='cd /Users/arbitrarily/Git/lexichronic-v3/wp-content/themes/lexiv3/grunt'
alias aggrosass='cd /Users/arbitrarily/Git/datnexus/wp-content/themes/datnexus/grunt'
alias rosesass='cd /Users/arbitrarily/Git/roserenegades/wp-content/themes/roserenegades/grunt'

# keys
alias keys='pbcopy < ~/.ssh/id_rsa.pub'

# find todos
alias todos='ack -n -R --nogroup "(TODO|FIND|FIX(ME)?):" --ignore-dir={composer,vendor,vendors,min,lib}'

# # find by name
alias qfind="find . -name "

# mute
alias stfu='osascript -e "set volume output muted true"'

# # copy pwd
alias cpwd='pwd|tr -d "\n"|pbcopy'
# # alias cl='fc -e -|pbcopy'

# # remove .git
alias ungit='find . -name '.git' -exec rm -rf {} \;'

# # IP info
alias ip='curl http://ipecho.net/plain; echo'
# # alias ip="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"

# # computer power options
# alias reboot='sudo /sbin/reboot'
# alias shutdown='sudo /sbin/shutdown'
# alias lock='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
# alias poweroff='sudo /sbin/poweroff'
# alias halt='sudo /sbin/halt'

# git log detailed
alias glg='git log --date-order --all --graph --format="%C(green)%h%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'

# git log files changed
alias glg2='git log --date-order --all --graph --name-status --format="%C(green)%H%Creset %C(yellow)%an%Creset %C(blue bold)%ar%Creset %C(red bold)%d%Creset%s"'
#
# # history
alias h='history'

# active connections
alias connections='lsof -i'

# alias for detailed, colored ls
alias ls='ls -lhaG'
