.PHONY: install brew-restore  brew-snapshot vscode-restore vscode-snapshot

# Run the Dotbot install script
install:
	./install

# Save snapshot of current Homebrew packages to macos/Brewfile
brew-snapshot:
	brew bundle dump -f --file=macos/Brewfile
	brew bundle --force cleanup --file=macos/Brewfile

# Restore Homebrew packages
brew-restore:
	brew update
	brew upgrade
	brew install mas
	brew bundle install --file=macos/Brewfile
	brew cleanup

# Save snapshot of current extensions to vscode/extensions.txt
vscode-snapshot:
	code --list-extensions > ./vscode/extensions.txt

# Install extensions from vscode/extensions.txt
vscode-restore:
	cat ./vscode/extensions.txt | xargs -L 1 code --install-extension
