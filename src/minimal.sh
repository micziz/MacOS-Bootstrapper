if [ `whoami` != root ]; then
    echo Please run this script as root or using sudo
    exit
fi

echo "Minimal version of bootstraper"
echo "Continue y/N"

read confirm

if confirm = "y"
then
    echo "continuing..."
else
    echo "Exiting..."
    exit
fi

sleep 3

clear

echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Hombrew installed"
sleep 2
clear

echo "Installing git"
brew install git
echo "git installed"

echo "installing casks..."
brew install --cask waterfox
echo "waterfox installed"
brew install --cask visual-studio-code
echo "vscode installed"
brew install --cask iterm2
echo "iterm2 installed"

echo "Done! Now go develop!"
