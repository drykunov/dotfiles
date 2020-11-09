# https://msol.io/blog/tech/work-more-efficiently-on-your-mac-for-developers/


# Install Xcode Command-Line tools
xcode-select --install

# Install brew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew cask install 1password
brew cask install google-chrome
brew cask install telegram
brew cask install iterm2
brew cask install sublime-text
brew cask install forklift
brew cask install jetbrains-toolbox
brew cask install slack
brew cask install rocket-chat
brew cask install google-backup-and-sync
brew cask install skitch
brew cask install sourcetree
brew cask install tor-browser
brew cask install karabiner-elements # Requires sudo

brew install git
brew install tldr
brew install htop
brew install dockutil
brew install vim
brew install zsh
brew install zsh-completions


## Configure ZSH
# Make sure that your terminal running zsh as "/usr/local/bin/zsh --login"
# Install oh-my-zsh without changing default shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)" --unattended
cp .zshrc ~/.zshrc
chmod go-w "$(brew --prefix)/share"


## Settings
# Prepare dock
dockutil --remove all --no-restart
dockutil --add '/Applications/ForkLift.app' --position beginning --no-restart

dockutil --add '/Applications/Sublime Text.app' --no-restart
dockutil --add '/Applications/Notes.app' --no-restart
dockutil --add '/Applications/Calendar.app' --no-restart

dockutil --add '/Applications/Google Chrome.app' --no-restart

dockutil --add '/Applications/iTerm.app' --no-restart

dockutil --add '/Applications/Rocket.Chat.app' --no-restart
dockutil --add '/Applications/Microsoft Outlook.app' --no-restart
dockutil --add '~/Downloads' --view fan --display stack --sort dateadded

#
# Miniconda install
#
# curl -O "https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh"
# bash Miniconda3-latest-MacOSX-x86_64.sh -b
# export PATH="$HOME/miniconda3/bin:$PATH"
brew cask install miniconda
conda init "$(basename "${SHELL}")"
conda config --append channels conda-forge
rm Miniconda3-latest-MacOSX-x86_64.sh



