# Packaged Apps
echo "**** Downloading DMG applications ****"

echo "Creating a manual installs directory"
mkdir -p "manual"

# Download Docker
echo "Downloading Docker"
curl -o "./manual/Docker.dmg" https://download.docker.com/mac/stable/Docker.dmg

# Download Chrome
echo "Downloading Chrome"
curl -o "./manual/Chrome.dmg" https://dl.google.com/chrome/mac/stable/GGRO/googlechrome.dmg

echo "**** Downloading PKG applications ****"

# Download 1Password
echo "Downloading 1Password"
curl -o "./manual/1Password-7.5.pkg" https://c.1password.com/dist/1P/mac7/1Password-7.5.pkg