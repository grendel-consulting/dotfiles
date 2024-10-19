# Dotfiles for Grendel Consulting

Configuration and settings to rapidly bootstrap a new machine using [Dotbot](https://github.com/anishathalye/dotbot).

## Usage

### Installation

With a freshly unboxed machine running macOS (with zsh, python and git installed, which should be how they ship):

```zsh
export DOTFILES="$HOME/.dotfiles"
git clone git@github.com:grendel-consulting/dotfiles.git $DOTFILES --recursive
cd $DOTFILES
make install
```

With an existing setup, it may be worth backing up your dotfiles first.

### Manual Steps

Everything else is manual, whilst I port over to Dotbot; some existing todos:

- Adopt sensible macOS privacy, productivity and security defaults
- Convert manual installation of `oh-my-zsh`, theme, fonts and plugins to use `zgenom`
- Configure HomeBrew and Brewfile, pruning excess formulae
- Extract other configuration, i.e. for VS Code, and prune
- Adopt other existing dotfiles

### Maintenance

Regular maintenance tasks should be handled through scripts here too.
