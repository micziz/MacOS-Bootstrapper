echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Hombrew installed"
sleep 2
clear
echo "Installing python, node, ruby and git"
brew install python@3.10
brew install node
brew install git
brew install ruby
echo "Installed python, node, ruby and git succesfuly"
echo "cleainig up"
brew cleanup

echo "Installing cask's"

brew install --cask waterfox
echo "Waterfox installed"
brew install --cask iterm2
echo "iterm2 installed"
brew install --cask vscodium
echo "vscodium installed"
brew install --cask gimp
echo "gimp installed"
brew install --cask inkscape
echo "inkscape installed"
brew install --cask iina
echo "iina installed"
brew install --cask joplin
echo "joplin installed"
brew install --cask keka
echo "keka installed"
brew install --cask onlyoffice
echo "onlyoffice installed"
brew install --cask handbrake
echo "handbrake installed"
brew install --cask obs
echo "obs installed"
brew install --cask alt-tab
echo "alt-tab installed"
brew install --cask audacity
echo "audacity installed"
brew install --cask docker
echo "docker installed"
brew install --cask powershell
echo "powershell installed"

echo "All apps with homebrew installed, proceding to install firefox dev with macapps.link"
sleep 3
curl -s 'https://api.macapps.link/en/firefoxdev' | sh

echo "Fineshed! Now your computer is bootstrapped with only foss softwere"