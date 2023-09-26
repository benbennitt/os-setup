#::::::::::: GENERAL :::::::::::
alias dev="cd ~/Dev"
alias zs="code ~/.zshrc"
alias reloadzs="source ~/.zshrc"
alias c="code ."
alias hype="code ~/.hyper.js"
alias games="cd ~/Dev/brain-power-games"
alias bridge="cd ~/Dev/bridge"


#::::::::::: WORK :::::::::::
alias postgres="pg_ctl -D /opt/homebrew/var/postgres -l logfile start && pg_ctl status -D /opt/homebrew/var/postgres"


#::::::::::: GIT :::::::::::
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
alias gc="git commit -a -m"
alias gcm="git commit -m"
alias gcc="git commit"
alias gca="git commit --amend"
alias gcan="git commit --amend --no-edit"
alias gp="git pull"
alias gpom="git pull origin main"
alias gcom="git checkout main"
alias upm="git checkout main && git pull origin main"
alias gpick="git cherry-pick"
alias gbf="git branch | grep"

# Set remote origin for a new branch
function gitup {
  BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)
  if [ $BRANCH_NAME != "main" ]; then
    git push origin $BRANCH_NAME && git branch -u origin/$BRANCH_NAME
  fi
}

# Force push (unless main branch)
function gitforce {
  BRANCH_NAME=$(git rev-parse --abbrev-ref HEAD)
  if [ $BRANCH_NAME != "main" ]; then
    git push --force-with-lease origin $BRANCH_NAME
  fi
}

# Change previous commit's hash without changes
# and force push (similar to `gitempty` below but
# without adding an empty commit to history)
function gitrehash {
  chmod +x README.md
  git add README.md
  git commit --amend --no-edit
  chmod -x README.md
  git add README.md
  git commit --amend --no-edit

  gitforce
}

# Submit empty commit, e.g. gitempty "Rerun CI tests"
function gitempty {
  git commit --allow-empty -m "$1"
}

# Delete branches matching, e.g. gitdeleteall fix
function gitdeleteall {
  git branch -D `git branch | grep "$1"`
}


#::::::::::: UTILITIES :::::::::::
# Take a screenshot every N seconds, e.g. timelapse 20
function timelapse() {
  while :; do; echo "📸" $(date +%H:%M:%S); screencapture -x ~/Screenshots/timelapse/$(date +%s).png; sleep $1; done
}

# Check status for a URL, e.g. status https://google.com
function status () {
  curl -s -o /dev/null -w "%{http_code}\n" $1
}

# Check status for a CSV of URLs, e.g. statusAll file.csv
function statusAll () {
  while IFS=, read -r col1 col2
  do
    curl -s -o /dev/null -w "%{http_code} : $col2\n" $col2
    # echo $col2
  done < $1
}

# Read out CSV data, e.g. parseCSV file.csv
function parseCSV () {
  while IFS=, read -r col1 col2
  do
    echo "Ouput: $col1|$col2"
  done < $1
}


#::::::::::: SYSTEM :::::::::::
# General
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export VISUAL="code -w"
export EDITOR="$VISUAL"
export GIT_EDITOR="$VISUAL"

# Homebrew; multiple on Apple Silicon
if [ "$(arch)" = "arm64" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)" # Legacy
else
    eval "$(/usr/local/bin/brew shellenv)" # Rosetta
fi

# Python
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Ruby
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"

# GEM
# export GEM_HOME="$HOME/.gem"


#::::::::::: ZSH SETUP :::::::::::
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