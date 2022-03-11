echo "Welcome to MacOS Bootstrap for M1."
echo "This will install a full dev enviorment"
echo "Are you ok?"
function confirm(){
   read -p "$* [y/n]: " yn
    case $yn in
        [Yy]*) return 0  ;;
        [Nn]*) return 1  ;;
    esac 
}
confirm
echo "ok! installing xcode tools"
sleep 2
clear
echo "this make take some time"
sudo xcode-select --install
echo "installing homebrew!"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo "hombre installed"
echo "adding homebrew to your PATH"
echo "export PATH=/opt/homebrew/bin:$PATH" >> ~/.bash_profile && source ~/.bash_profile
echo "shloud have added homebrew to PATH"
echo "cleaning up..."
brew cleanup

echo "installing gnu utils"
brew install coreutils
brew install gnu-sed
brew install gnu-tar
brew install gnu-indent
brew install gnu-which
brew install findutils

echo "proceding to install packages"
PACKAGES=(
    git
    node
    jq
    python3
    wget
    kotlin
    golang
    lua
    gcc
    bash
    alt-tab
    yarn
    typescript
    electron
    ruby
)
brew install ${PACKAGES[@]}
echo "packages installed"

echo "installing cask"
CASKS=(
    atom
    android-studio
    chromium
    firefox
    gimp
    google-chrome
    slack
    telegram
    thunderbird
    visual-studio-code
    vlc
    zoom
    whatsapp
    vscodium
    iina
    spotify
    iterm2
    pycharm
    handbrake
    zoom
)
sudo -u $SUDO_USER brew install --cask ${CASKS[@]}
echo "installeing rust"
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

echo "cleaning up"
brew cleanup
echo "done! bootstrapped"
clear