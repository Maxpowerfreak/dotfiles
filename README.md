# Dotfiles
This repo holds my dotfiles, which I share accross devices I work with.

## Usage
Clone this repo, and create a symlink in the appropriate location for each dotfile.

```sh
ln -s {sourcePath} {destinationPath}
```

## Install scripts

### `brew.sh`
Installs homebrew and some of the packages I use.

### `install/zsh-plugins.sh`
Requirements:
 * `brew.sh` is installed
 * `git` is installed
 * `ohmyz.sh` is installed 

Running the install command will install the prequisites, plugins, and starship. The only thing left would be to replace the `.zshrc` with the one from this repository.

Additionally, doing the same with `.config/starship.toml` will ensure a properly configured starship.
