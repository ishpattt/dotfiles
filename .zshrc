# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="robbyrussell"

# Plugins
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Safety
alias mv="mv -i"
alias cp="cp -i"
alias rm="rm -i"

# My aliases
alias ls='ls -alFh'
alias rebash='source ~/.zshrc'

# Git Add
alias add='git add'

# Git Branch
alias br='git branch'
alias brd='git branch -D'

# Git Commit
alias com='git commit -m'

# Git Checkout
alias co='git checkout'

# Git Diff
GIT_DIFF_OPTIONS="--ignore-all-space --minimal --find-copies"
GIT_DIFF_STAT_OPTIONS="--stat"
alias dif="git diff $GIT_DIFF_OPTIONS"
alias difl="git --no-pager diff $GIT_DIFF_STAT_OPTIONS"
alias difc="git diff $GIT_DIFF_OPTIONS HEAD~ HEAD"
alias difcl="git --no-pager diff $GIT_DIFF_STAT_OPTIONS HEAD~ HEAD"
alias difs="git diff $GIT_DIFF_OPTIONS --staged"
alias difsl="git --no-pager diff $GIT_DIFF_STAT_OPTIONS --staged"
alias difm="git diff $GIT_DIFF_OPTIONS main"
alias difml="git --no-pager diff $GIT_DIFF_STAT_OPTIONS main"

# Git Log
GIT_LOG_OPTIONS="--graph --pretty=format:'%C(yellow)%h%C(reset) %C(italic magenta)%cd%C(reset) %C(bold blue)[%aN]%C(reset)%C(auto)%d%C(reset) %C(italic)%s%C(reset)' --abbrev-commit --date=relative"
alias lg="git --no-pager log $GIT_LOG_OPTIONS --max-count=10"
alias lb="git --no-pager log $GIT_LOG_OPTIONS --max-count=10 --branches"
alias lf="git log $GIT_LOG_OPTIONS --branches"
alias lga="git log $GIT_LOG_OPTIONS --all"
alias lgm="git log $GIT_LOG_OPTIONS --author=Isha"

# Git Push/Pull
alias pullme='git pull origin master'
alias pushme='git push origin HEAD'
alias pushmef='git push -f origin HEAD'

# Git Status
alias st='git status --short'

# Git Rebase
alias re='git rebase -i'
alias rem='git rebase -i master'

# Other Git Commands
alias chp='git cherry-pick'
alias gg='git grep'
alias bl='git blame -w'
