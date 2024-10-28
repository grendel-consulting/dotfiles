# Dotfiles for Grendel Consulting

Configuration and settings to rapidly bootstrap a new machine using [Chezmoi](https://www.chezmoi.io/)

We're using [ZSH](https://en.wikipedia.org/wiki/Z_shell) with [Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh/) for plugins and [Antigen](https://github.com/zsh-users/antigen) for plugin management. Applications, tools and utiliies rely on [Homebrew](https://brew.sh/) for package management.

Our shell is [Starship](https://starship.rs/), running in [iTerm2](https://iterm2.com/) and [Visual Studio Code](https://code.visualstudio.com/) terminals, with a fallback setup for macOS Terminal running `bash`. We're using modern alternatives to `cd`, `cat` and `ls`.

Of course, secrets stay in [1Password](https://developer.1password.com/docs/cli), which also handles SSH key management and commit signing.

## Usage

## Prerequisites

With an existing setup, back everything up first. You will need XCode command-line tools and Homebrew, see below.

### Installation

1. Install the prerequisites and `brew install chezmoi` then `chezmoi init grendel-consulting`, either manually or with the `.bootstrap.sh` script
2. Preview with `chezmoi diff`
3. Apply with `chezmoi apply`

Optionally, run the following one-liner:

```sh
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply grendel-consulting
```

### Manual Steps

Everything not handled by Chezmoi is manual; some existing todos:

- Adopt sensible macOS privacy, productivity and security defaults
- Adopt secret versioning and hashes, coupled with tagging to telegraph
- Extract other configuration, i.e. for Flux, Ice, Rectangle, iTerm2, VS Code, Chrome, Sublime
- Adopt and configure atuin and direnv

You will need to sign in to various tools for their own inbuilt syncing to happen: 1Password, vscode

You may need to launch tools first time to configure launch on startup and checking for updates

You may need to explicitly grant permissions to various tools: Flux, Ice, Rectangle

### Maintenance

Regular maintenance tasks should be handled through scripts here too.
