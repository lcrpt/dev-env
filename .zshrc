# Path to your oh-my-zsh installation.
export ZSH=/Users/leopolddelassence/.oh-my-zsh
export NPM_TOKEN=9250adf8-ad9a-4ab5-929a-78667f706fa8

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="powerlevel9k/powerlevel9k"
# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
# User configuration
# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/git/bin"
PATH=$PATH:$HOME/bin
PATH="~/Library/Python/2.7/bin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
source $ZSH/oh-my-zsh.sh
export DRONE_SERVER=https://drone2.playship.co
export DRONE_TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ0ZXh0IjoibGVvbGFzc2VuY2UiLCJ0eXBlIjoidXNlciJ9.M2HQNqxggCwVSrZ42LFDYj2bzkQZeLybdXNdBCjSVKI
export AWS_ACCESS_KEY_ID=AKIAIYZ2R7M2IDW4OKOA
export AWS_SECRET_ACCESS_KEY=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
export AMQP_HOST=localhost:5672

source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Main
alias lsa='ls -alt'
alias c='clear'

# yarn
alias y='yarn'
alias yd='yarn dev'
alias ys='yarn start'
alias yb='yarn build'
alias ys='y start'
alias yd='y dev'
alias yb='y build'
alias yt='y test'
alias yi='y init'

# npm
alias nrd='npm run dev'
alias nrs='npm start'

# make
alias mk='make'
alias mks='make start'
alias mkd='make dev'
alias mkb='make build'
alias mkt='make test'
alias mktw='make test-watch'
alias mktc='make test-cover'
alias mkl='make lint'
alias mklw='make lint-watch'
alias mpc='mkl && mkt && mktc'

# Git
alias gst='git status'
alias ga='git add .'
alias gap='git add -p'
alias gct='git commit'
alias gst-gap='gst && gap'
alias checkout='git checkout'
alias checkout-b='git checkout -b'
alias rebase-u='git pull --rebase upstream'
alias grc='git rebase --continue'
alias grs='git rebase --skip'
alias gra='git rebase --abort'
alias gmt='git mergetool'
alias push-o='git push origin'
alias pull-o='git pull origin'

# git flow
alias gitflow-pull='checkout develop; git pull origin develop; checkout master; git pull origin master; checkout develop;'
alias gitflow-push='git push origin develop; checkout master; git push origin master; checkout develop; git push --tags;'
alias gitflow-start='git flow release start'
alias gitflow-finish='git flow release finish'

# Cubyn
alias cdc='cd /Users/leopolddelassence/cubyn/stack'
alias infra='cdc && cd infra-docker-compose'
alias up-gateway='/Users/leopolddelassence/cubyn/stack/infra-docker-compose; docker-compose -f gateways.yml up gateway-rest;'

# infra
alias cdi='cd /Users/leopolddelassence/cubyn/infra'
alias kube-preprod='export CLOUDSDK_CONTAINER_USE_V1_API_CLIENT=true; gcloud container clusters get-credentials non-critical --zone europe-west3-c --project infra-195110'
alias kube-prod='export CLOUDSDK_CONTAINER_USE_V1_API_CLIENT=false; gcloud beta container clusters get-credentials production-1 --region europe-west3 --project infra-195110'

# scripts
alias stack='run-stack; sleep 60; nodemon-services'
alias cdsh='/Users/leopolddelassence/environment/scripts'
alias run-docker='/Users/leopolddelassence/environment/scripts/run-dockers.sh'
alias start-cube='/Users/leopolddelassence/environment/scripts/start-vnex-cube.sh'
alias run-services='/Users/leopolddelassence/environment/scripts/run-cube-stack.sh'
alias run-containers='/Users/leopolddelassence/environment/scripts/run-containers.sh'
alias touch-services='/Users/leopolddelassence/environment/scripts/touch-services.sh'

# make cubyn
alias m='make'
alias mt='make test'
alias mtw='make test-watch'
alias mtc='make test-cover'

# itermocil
alias update-stack='itermocil update-stack'
alias nodemon-services='itermocil nodemon-services'
alias run-stack='itermocil run-stack'

alias node-debugger='~/Documents/node-debugger; atom .; nodemon index.js'


# functions
function migration-create { touch `date +%s`-$1.sql; }

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
# You may need to manually set your language environment
# export LANG=en_US.UTF-8
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
# Compilation flags
# export ARCHFLAGS="-arch x86_64"
# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/leopolddelassence/environment/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/leopolddelassence/environment/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/leopolddelassence/environment/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/leopolddelassence/environment/google-cloud-sdk/completion.zsh.inc'; fi
