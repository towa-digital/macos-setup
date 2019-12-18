# ----------------------
# Aliases
# ----------------------
alias cat="bat"
alias ping="prettyping --nolegend"
alias preview="fzf --preview 'bat --color \"always\" {}'"
alias top="sudo htop"
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules"
alias help="tldr"
alias zshrc="code ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias o="open ." # open current dir in finder
alias ut="uptime" # computer uptime
alias ldir="ls -al | grep ^d" # list all directories
alias ip="curl icanhazip.com" # Your public IP address
alias b="cd .."
alias dev="cd ~/dev"
alias afk='/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend'
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy";
alias nah="git reset --hard && git clean -df"
alias wip="git add . && git commit -m 'wip'"
alias towa='cd web/app/themes/towa-theme'

# Laravel / PHP
alias art="php artisan"
alias p="phpunit"
alias pf="phpunit --filter "
alias tinker="php artisan tinker"
alias phpunit="vendor/bin/phpunit"
alias migrate="php artisan migrate"

# Usefull stuff for presentation and seeing dotfiles
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"
alias showall="defaults write com.apple.finder AppleShowAllFiles YES && killall Finder"
alias hideall="defaults write com.apple.finder AppleShowAllFiles NO && killall Finder"

# Get rid of those pesky .DS_Store files recursively
alias dsclean="find . -type f -name .DS_Store -print0 | xargs -0 rm"

# Flush your dns cache
alias flush="dscacheutil -flushcache"

# brew aliases
alias bup="brew update && brew upgrade && brew cleanup"
alias update="bup && composer global update && nvm install stable"

# Empty the Trash on all mounted volumes and the main HDD.
# Also, clear Apple’s System Logs to improve shell startup speed.
# Finally, clear download history from quarantine. https://mths.be/bum
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl; sqlite3 ~/Library/Preferences/com.apple.LaunchServices.QuarantineEventsV* 'delete from LSQuarantineEvent'"

# git
alias ga="git add"
alias gaa="git add ."
alias gaaa="git add -A"
alias gb="git branch"
alias gbd="git branch -d "
alias gc="git commit"
alias gcm="git commit -m"
alias gco="git checkout"
alias gcob="git checkout -b"
alias gcom="git checkout master"
alias gd="git diff"
alias gda="git diff HEAD"
alias gi="git init"
alias gl="git log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias glg="git log --graph --oneline --decorate --all"
alias gld='git log --pretty=format:"%h %ad %s" --date=short --all'
alias gm="git merge --no-ff"
alias gp="git pull"
alias gs="git status"
alias gss="git status -s"
alias gst="git stash"
alias gstl="git stash list"
alias gstp="git stash pop"
alias gstd="git stash drop"
