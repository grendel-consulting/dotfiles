#!/usr/bin/env zsh
# Equivalent to running `sh -c "$(curl -fsLS get.chezmoi.io)" -- init grendel-consulting`
set -euo pipefail

xcode-select --install || echo "XCode already installed"

if which -s brew; then
    echo 'Homebrew already installed'
else
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo >> $HOME/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew install chezmoi
chezmoi init grendel-consulting
