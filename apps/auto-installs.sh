#!/bin/bash

# Zipped apps
echo "**** Downloading and installing ZIPPED applications ****"

mkdir "tmp-auto-install-dir"

# Install VSCode
echo "Installing VSCode"
curl -o "./tmp-auto-install-dir/VSCode-darwin-stable.zip" https://az764295.vo.msecnd.net/stable/cd9ea6488829f560dc949a8b2fb789f3cdc05f5d/VSCode-darwin-stable.zip
unzip "./tmp-auto-install-dir/VSCode-darwin-stable.zip" -d /Applications

# Install Github Desktop app
echo "Installing Github Desktop app"
curl -o "./tmp-auto-install-dir/GithubDesktopApp.zip" https://desktop.githubusercontent.com/releases/2.5.2-41e70ee4/GitHubDesktop.zip
unzip "./tmp-auto-install-dir/GithubDesktopApp.zip" -d /Applications

# Install Postico 
echo "Installing Postico"
curl -o "./tmp-auto-install-dir/Postico.zip" https://s3-eu-west-1.amazonaws.com/eggerapps-downloads/postico-1.5.13.zip
unzip "./tmp-auto-install-dir/Postico.zip" -d /Applications

# Install Postman
echo "Installing Postman"
curl -o "./tmp-auto-install-dir/Postman.zip" https://dl.pstmn.io/download/latest/osx
unzip "./tmp-auto-install-dir/Postman.zip" -d /Applications

echo "Cleaning temp download directory"
rm -rf "./tmp-auto-install-dir"
