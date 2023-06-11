#!/usr/bin/env zsh

echo "\n<<< Starting Homebrew Setup >>>\n"

if ! exists brew; then
  echo "brew doesn't exists, continuing with install"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> ~/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

 brew bundle --verbose
