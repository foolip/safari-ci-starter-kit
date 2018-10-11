#!/bin/bash
set -e

export HOMEBREW_NO_AUTO_UPDATE=1
brew cask install Homebrew/homebrew-cask-versions/safari-technology-preview
sudo "/Applications/Safari Technology Preview.app/Contents/MacOS/safaridriver" --enable
