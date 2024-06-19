#!/bin/bash 
 
# Installs Homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

# Packages I use
app = (
    bat
    fzf
)

brew install "${app[@]}"