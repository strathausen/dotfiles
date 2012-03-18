# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
#export PS1="%K{green}%n@%m%k %B%F{cyan}%(4~|...|)%3~%F{white} %# %b%f%k"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="strathausen"
#robbyrussell"

# Comment this out to disable weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)
# deb extract history-substring-search debian npm ssh-agent command-not-found)

source $ZSH/oh-my-zsh.sh
zstyle ':completion:*' completer _expand _complete _correct _approximate

# Customize to your needs...
export PATH=/home/p/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/p/local/bin:/usr/lib/jvm/java-6-sun/bin

HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history
export AWS_AUTO_SCALING_HOME=/home/p/local
export AWS_ELB_HOME=/home/p/local
export PATH=$PATH:$AWS_AUTO_SCALING_HOME/bin
export AWS_CREDENTIAL_FILE=$AWS_AUTO_SCALING_HOME/credential-file-path
export JAVA_HOME=/usr/lib/jvm/java-6-sun
export PATH=$PATH:$JAVA_HOME/bin
#alias gedit='gedit --new-window'
alias cp='nocorrect cp'
alias gitst='git status -s'
alias ack=ack-grep
