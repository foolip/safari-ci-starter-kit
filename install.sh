#!/bin/bash
set -e

# Safari Technology Preview
export HOMEBREW_NO_AUTO_UPDATE=1
# This is equivalent to `Homebrew/homebrew-cask-versions/safari-technology-preview`,
# but the raw URL is used to bypass caching.
brew cask install https://raw.githubusercontent.com/Homebrew/homebrew-cask-versions/master/Casks/safari-technology-preview.rb
sudo "/Applications/Safari Technology Preview.app/Contents/MacOS/safaridriver" --enable

# Selenium Python Bindings
sudo easy_install pip
sudo pip install selenium
