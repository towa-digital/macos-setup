# Filepaths
ANTIBODY_PLUGINS=~/.dotfiles/zsh/.zsh_plugins.txt
PLUGINS_CACHED=~/.dotfiles/zsh/.zsh_plugins.sh
ALIASES=~/.dotfiles/zsh/aliases.zsh
FUNCTIONS=~/.dotfiles/zsh/functions.zsh
EXPORTS=~/.dotfiles/zsh/exports.zsh

# Add ssh key
[[ -z $(ssh-add -L | grep ~/.ssh/id_rsa) ]] && ssh-add ~/.ssh/id_rsa

# Antibody
# comment out this line after initial setup - uncomment after new plugin is installed
antibody bundle < $ANTIBODY_PLUGINS > $PLUGINS_CACHED

# uncomment this line after initial setup to cache installed plugins
# [[ -f $PLUGINS_CACHED ]] && source $PLUGINS_CACHED

# Aliases
[[ -f $ALIASES ]] && source $ALIASES

# Functions
[[ -f $FUNCTIONS ]] && source $FUNCTIONS

# Exports
[[ -f $EXPORTS ]] && source $EXPORTS

# set default user to clean up prompt
DEFAULT_USER="$USER"

# initialize nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$(brew --prefix nvm)/nvm.sh" ] && . "$(brew --prefix nvm)/nvm.sh"  # This loads nvm