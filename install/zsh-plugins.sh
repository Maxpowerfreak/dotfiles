#!/bin/bash 

echo "Checking dependencies..."
### Verify requirements are installed ###
## Homebrew
if command -v brew >/dev/null; then
    echo "brew is installed"
else
    echo "Error: brew is not installed. Please install Homebrew (https://brew.sh/) first."
    exit 1
fi

## Git
if command -v git >/dev/null; then
    echo "git is installed"
else
    echo "Error: git is not installed. Please install git first."
    exit 1
fi

## Oh my ZSH plugins 
# Check if ZSH_CUSTOM variable is set
if [ -z "$ZSH_CUSTOM" ]; then
    # If not, fall back to checking if the directory exists in the home
    if [ -d "$HOME/.oh-my-zsh/custom" ]; then
        echo "oh-my-zsh is installed"
    else
        echo "Error: oh-my-zsh is not installed. Please install oh-my-zsh (https://ohmyz.sh/) first."
        exit 1
    fi
else
    echo "Error: oh-my-zsh is not installed. Please install oh-my-zsh (https://ohmyz.sh/) first."
    exit 1
fi

echo "dependencies checked"

### Install prequisites ###
echo "installing prequisites"

# fzf and bat
brew install fzf bat

echo "done installing prequisites"

### Install zsh plugins ###
echo "installing zsh plugins"

# zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting

# zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions

# fzf-tab
git clone https://github.com/Aloxaf/fzf-tab ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-tab

# zsh-bat
git clone https://github.com/fdellwing/zsh-bat.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-bat

echo "done installing zsh plugins"

### Install starship.rs ###
echo "installing starship.rs"
/bin/bash -c "$(curl -fsSL https://starship.rs/install.sh)"

echo "done installing starship.rs"