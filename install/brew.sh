#!/bin/bash 
 
# Installs Homebrew if not installed
if ! command -v brew >/dev/null; then
    echo "Homebrew is not installed. Installing..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew update
brew upgrade

# Packages I use
app = (
    bat
    fzf
    direnv
)

brew install "${app[@]}"