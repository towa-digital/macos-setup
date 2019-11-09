#!/bin/sh

echo "Setting up your Mac..."
echo "Installing Homebrew..."
# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update
# Install all our dependencies with bundle (See Brewfile)
echo "Installing Brew Dependencies..."
brew tap homebrew/bundle
brew bundle

# create system directory for nvm which is installed with homebrew
mkdir ~/.nvm

# Make ZSH the default shell environment
chsh -s $(which zsh)

# Check for Composer and install if we don't have it
echo "Installing Composer and Dependencies..."
if test ! $(which composer); then
    curl -sS https://getcomposer.org/installer | php
    mv composer.phar /usr/local/bin/composer
fi

# Install global Composer packages

# Safer alternative to 'composer global require'.
composer global require consolidation/cgr
# enables parallel installation of packages
composer global require hirak/prestissimo

cgr bramus/mixed-content-scan
cgr friendsofphp/php-cs-fixer
cgr laravel/installer
cgr laravel/valet
cgr phpmd/phpmd
cgr spatie/http-status-check
cgr spatie/phpunit-watcher

# install laravel/homestead
echo "Installing Laravel/Homestead..."
vagrant box add laravel/homestead
git clone https://github.com/laravel/homestead.git ~/Homestead

mkdir $HOME/.dotfiles
cp -r $PWD/dotfiles/* $HOME/.dotfiles
# echo "Backing up current ~/.zshrc file to ~/.dotfiles/.zshrc_backup"
mv $HOME/.zshrc $HOME/.dotfiles/.zshrc_backup

# create symlink for zsh config
rm $HOME/.zshrc
ln -s $HOME/.dotfiles/zsh/.zshrc $HOME/.zshrc

source $HOME/.zshrc
