#!/bin/bash

sh ./apps/auto-installs.sh

sh ./managers/brew/setup.sh
sh ./managers/nvm/setup.sh

sh ./apps/manual-installs.sh

echo "Everything has been installed"
echo "Check the /manual folder for applications which need to be manually installed"
echo "Restart your terminal so you can make use of installed CLI packages"
