#!/bin/bash

# Install NVM with Node and npm
echo "Installing NVM"
# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Install latest stable node version
echo "Installing Node v12.16.3 with the latest NPM version"
nvm install v12.16.3 --latest-npm