#!/usr/bin/env zsh
set -euo pipefail

# Exit immediately if 1Password CLI is already in our $PATH and logged in
type op >/dev/null 2>&1 && op whoami >/dev/null 2>&1 && exit 0

if type op >/dev/null 2>&1; then
    if op whoami >/dev/null 2>&1; then
        echo "You are logged in to 1Password already."
    else
        echo "Please login to 1Password:"
        op signin --account grendel.1password.com
    fi
else
    case "$(uname -s)" in
    Darwin)
        echo "Installing 1Password, then please login:"
        brew install --cask 1password-cli
        op signin --account grendel.1password.com
        ;;
    *)
        echo "Unsupported OS"
        exit 1
        ;;
    esac

fi