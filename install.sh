#!/bin/bash
set -e

# Safari Technology Preview
export HOMEBREW_NO_AUTO_UPDATE=1
brew cask install Homebrew/homebrew-cask-versions/safari-technology-preview
sudo "/Applications/Safari Technology Preview.app/Contents/MacOS/safaridriver" --enable

# Selenium Python Bindings
sudo easy_install pip
sudo pip install selenium
