echo "Installing homebrew"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Hombrew installed"

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

echo "Done!"
