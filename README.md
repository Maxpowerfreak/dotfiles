# Dotfiles
This repo holds my dotfiles, which I share accross devices I work with.

## Usage
Clone this repo, and create a symlink in the appropriate location for each dotfile.

```sh
ln -s {sourcePath} {destinationPath}
```

Additionally, the `install` folder has a set of shell scripts to install various dependencies.

## Install scripts

## `_all.sh`
Runs all of the install scripts in an arbitrary order.

## `brew.sh`
Installs homebrew and some of the packages I use.

## `install/zsh-plugins.sh`
Requirements:
 * `brew.sh` is installed
 * `git` is installed
 * `ohmyz.sh` is installed 

Running the install command will install the prequisites, plugins, and starship. The only thing left would be to replace the `.zshrc` with the one from this repository.

Additionally, doing the same with `.config/starship.toml` will ensure a properly configured starship.

## `extra.sh`
This script has the extra stuff I haven't bothered to categorize yet. Currently it has:
 * dexbov (jetlify)
    * Requires `Nix` to work as intended. See the Nix section. It'll likely be thrown into a script too

# Nix
Installing Nix doesn't work great from the normal installer on ostree, so I use the [installer from Determinate Systems](https://github.com/DeterminateSystems/nix-installer)
