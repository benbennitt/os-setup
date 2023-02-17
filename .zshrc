# See bottom of file for setting up ZSH

# CONFIG
export EDITOR="code -w"
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# GENERAL
alias dev="cd ~/Dev"
alias zs="code ~/.zshrc"
alias reloadzs="source ~/.zshrc"
alias c="code ."
alias hype="code ~/.hyper.js"

# GIT
alias gaa="git add -A"
alias gs="git status -b -s"
alias gl="git log --pretty=\"%h | %ad | %an | %s\" --date=short"
alias gd="git diff"
alias gpho="git push origin"
alias gphf="git push --force-with-lease"
alias gco="git checkout"
alias gbl="git branch"
alias gbdd="git branch -D"
alias gbup="git branch -u"
alias guppo="git push --set-upstream origin"
alias gc="git commit -a -m"
alias gcm="git commit -m"
alias gcc="git commit"
alias gca="git commit --amend"
alias gcan="git commit --amend --no-edit"
alias gp="git pull"
alias gpom="git pull origin master"
alias gcom="git checkout master"
alias upm="git checkout master && git pull origin master"
alias gpick="git cherry-pick"
alias gbf="git branch | grep"

function gitup {
  BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)
  if [ $BRANCH_NAME != "master" ]; then
    git push origin $BRANCH_NAME && git branch -u origin/$BRANCH_NAME
  fi
}

function gitforce {
  BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)
  if [ $BRANCH_NAME != "master" ]; then
    git push --force-with-lease origin $BRANCH_NAME
  fi
}

function gitrehash {
  chmod +x README.md
  git add README.md
  git commit --amend --no-edit
  chmod -x README.md
  git add README.md
  git commit --amend --no-edit

  gitforce
}

function gitempty {
  git commit --allow-empty -m "$1"
}

function gitdeleteall {
  git branch -D `git branch | grep "$1"`
}

#::::::::::: UTILITIES :::::::::::
# Take a screenshot every N seconds
# Example: timelapse 20
function timelapse() {
  while :; do; echo "📸" $(date +%H:%M:%S); screencapture -x ~/Screenshots/timelapse/$(date +%s).png; sleep $1; done
}

# Check status for a URL
# Example: status https://google.com
function status () {
  curl -s -o /dev/null -w "%{http_code}\n" $1
}

# Check status for a CSV of URLs
# Example: statusAll file.csv
function statusAll () {
  while IFS=, read -r col1 col2
  do
    curl -s -o /dev/null -w "%{http_code} : $col2\n" $col2
    # echo $col2
  done < $1
}

# Read out CSV data
# Example: parseCSV file.csv
function parseCSV () {
  while IFS=, read -r col1 col2
  do
    echo "Ouput: $col1|$col2"
  done < $1
}

#::::::::::: SETUP :::::::::::
# 1. Create: `touch ~/.zshrc`
# 2. Open: `open ~/.zshrc`
# 3. Paste [.zshrc](./.zshrc) contents
# 4. Reload: `source ~/.zshrc`

# Run `echo $0` to see what shell you're using (should see: /bin/zsh)
# ~/.zshenv is sourced for all new terminal sessions
# ~/.zshrc is only sourced for interactive sessions
# ~/.zprofile is only sourced when zsh is run as login shell, e.g. when logging in on the console or via SSH
# If new shells don't load this config, you may need to add them
# to `.bash_profile` or `.bashrc` (or change default shell to zsh)

#::::::::::: LEGACY :::::::::::
# alias fixcam="sudo killall VDCAssistant;sudo killall AppleCameraAssistant"
# alias fixnotis="sudo killall NotificationCenter"

# Node Version Manager (NVM)
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Ruby Version Manager (RVM)
# Load RVM into a shell session as a function
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

