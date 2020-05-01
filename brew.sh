echo "Installing Homebrew stuff";

# Make sure we’re using the latest Homebrew.
echo "Updating Homebrew..."
brew update

# Installing bundler...
echo "Installing bundler..."
sudo gem install bundler

echo "Installing ruby gems..."
bundle install

# Upgrade any already-installed formulae.
brew upgrade

# Install `wget`
echo "Installing wget.."
brew install wget

# Install GnuPG to enable PGP-signing commits.
brew install gnupg
brew install ssh-copy-id

# Install font tools.
echo "Installing font tools..."
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

echo "Installing Git..."
brew install git

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# software
echo "Installing Homebrew cask"
brew install caskroom/cask/brew-cask

# Install apps to /Applications
# Default is: /Users/$user/Applications
echo "installing apps with Cask..."

# Apps
apps=(
  chrome
  firefox
  iterm2
  transmit
  sequel-pro
  vlc
  skype
  dropbox
  spotify
  slack
  phpstorm
  github
  jumpcut
  divvy
  1password
  gotomeeting
  sonos
  transmission
  zoomus
  tuple
  screen
  postman
  vagrant
)

brew cask install --appdir="/Applications" ${apps[@]}

# Remove outdated versions from the cellar.
echo "Cleaning up..."
brew cask cleanup
brew cleanup
