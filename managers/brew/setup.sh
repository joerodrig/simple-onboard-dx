#!/bin/bash

# Brew Apps
echo "**** Downloading and installing BREW applications ****"

# Install Brew
echo "Installing HomeBrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# Turn off brew analytics
echo "Turning off brew analytics"
brew analytics off

# Install git (brew)
echo "Installing git"
brew install git

# Install ruby-install (brew)
echo "Installing ruby-install"
brew install ruby-install

# Install redis (brew)
echo "Installing Redis"
brew install redis 

# Install Chruby (brew)
echo "Installing Chruby"
brew install chruby