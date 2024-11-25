#!/usr/bin/env bash
# shellcheck disable=SC2016
#
# Equivalent to running `sh -c "$(curl -fsLS get.chezmoi.io)" -- init grendel-consulting`
set -euo pipefail

xcode-select --install || echo "XCode already installed"

if which -s brew; then
    echo 'Great, Homebrew (or Workbrew) already installed'
else
    # We're using Workbrew, so this should be run once that has been installed by your MDM
    {
        echo 'ZSH_VERSION=$(zsh --version | cut -d' ' -f2 | cut -d'.' -f1,2)'
        echo 'export FPATH="/usr/share/zsh/site-functions:/usr/share/zsh/$ZSH_VERSION/functions:$FPATH"'
        echo 'eval "$(/opt/workbrew/bin/brew shellenv)"'

    } >> "$HOME"/.zprofile

    eval "$(/opt/workbrew/bin/brew shellenv)"

    # If not, uncomment for Homebrew
    # /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    # echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> "$HOME"/.zprofile
    # eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew install chezmoi
chezmoi init grendel-consulting
