#echo "Creating an SSH key for you..."
#ssh-keygen -t rsa
#
#echo "Please add this public key to Github \n"
#echo "https://github.com/account/ssh \n"
#read -p "Press [Enter] key after this..."

echo "Copying configuration files to folders..."
cp -r .ssh/ "$HOME"/.ssh/
cp -r git/ "$HOME"
cp -r .zshrc/ "$HOME"
cp -r .zlogin/ "$HOME"

echo "Installing xcode-stuff..."
xcode-select --install

echo "Installing RVM..."
curl -sSL https://get.rvm.io | bash -s stable

echo "Installing Ruby..."
rvm install 2.7

echo "Installing NVM..."
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

echo "Installing OhMyZsh..."
curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh | bash

echo "Initial setup done"

sh brew.sh

sh osx.sh

sh vm.sh
