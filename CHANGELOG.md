# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Romantic Versioning](http://dafoster.net/articles/2015/03/14/semantic-versioning-vs-romantic-versioning/).

## [Unreleased]
### Added
- ssh config additions related to using sekey
- zsh config additions related to using sekey

## [v1.3.3] - 2019-11-10
### Changed
- gpg signature in gitconfig
- Changed user binary folder from $HOME/.bin to $HOME/bin
- Updated vundle submodule
- Fix strange gpg issue


## [v1.3.2] - 2019-08-08
### Added
- New filetypes config in vim for yaml, json and jade files
- Setting to allow write then not running vim with sudo


## [v1.3.1] - 2019-08-02
### Added
- Autoenv global environment settings


## [v1.3.0] - 2019-08-02
### Added
- Autoenv for Zsh via zplug
- rupa/z via zplug

### Removed
- Deprecated propmt.zsh since using janesmae/j2nes as theme


## [v1.2.5] - 2019-07-25
### Added
- Added vim-table-mode plugin to vim

### Changed
- Updated zplug submodule


## [v1.2.4] - 2019-06-23
### Changed
- Updated gitconfig, pull option rebase - preserve is deprecated in favor of merges


## [v1.2.3] - 2019-06-14
### Changed
- Update ansible configuration
- Add authorized_keys info ssh folder
- Updating zsh aliases config with alisas for gopass
- Updating zsh config with path for brew apps


## [v1.2.2] - 2019-02-11
### Changed
- Updated ansible configuration
- Updated zsh aliases update! method
  - Comment out mas and gem updates
  - Change from pip to pip3 as python2 is going to be deprecated really soon


## [v1.2.1] - 2019-01-19
### Added
- Added k under zplug, directory listings for zsh with git features


## [v1.2.0] - 2019-01-19
### Changed
- Changed ansible configuration

### Removed
- Removed irssi configs
- Removed todo.txt related configs


## [v1.1.2] - 2018-11-11
### Fixed
- zsh - load janesmae/j2nes as a theme with zplug 


## [v1.1.1] - 2018-11-11
### Added
- ssh - Local configs now in ~/ssh/config.local folder
- zsh - New plugin via zplug - cedi/meaningful-error-codes
- zsh - New personal theme via zplug - janesmae/j2nes

### Changed
- zaw - updated config

### Deprecated
- zsh - old prompt is now deprecated. Replacing with custom theme via  zplug.


## [v1.1.0] - 2018-10-17
### Added
- Added zsh autosuggestions plugin (zplug)
- Added zsh syntax-highlighting plugin (zplug)
- Added zsh zaw plugin
- Added zsh git-extra-commands plugin
- Added zsh git-cal plugin
- Added zsh colored-man-pages plugin
- Added zsh plugins for completion: zsh-completions, hub-zsh-comletion, zsh-curl-completion

### Changed
- Switched zplug for zsh plugin management

### Removed
- Removed zsh-syntax-highlighting and zsh-autosuggestions plugins (submodules)
- Removed alias for todo.txt


## [v1.0.4] - 2018-10-14
### Changed
- Moving to romaintic versioning scheme
- Zsh environment related settings now confirmed into one file
- Zsh history is only kept for non-privileged user accounts
- Zsh alias for GNU tr instead of BSD tr
- Zsh alias update! command is now a function and includes gem and pip updates


## [v1.0.3] - 2018-09-26
### Changed
- Tmux theme conf location
- Minor change to git log behaviour
- Contributor Covenant Code of Conduct replaced with the much more ethical Code of Merit

### Deprecated
- Zsh alias for todo.txt

### Removed
- Iterm2 Integration
- Zsh aliases typofix for Git


## [v1.0.2] - 2018-09-25
### Changed
- Submodules - Updated git submodules to the latest commit

### Fixed
- Language issues - LC_ALL was not set properly


## [1.0.1] - 2018-09-23
### Added
- CODEOWNERS
- CHANGELOG
- Default folders for Ansible
- Default config for ssh
- Custom filetype config for ViM
- Zsh plugin for Syntax highlighting

### Changed
- README - removed installation related detailed info
- gitignore - Ansible temp folders to be ignored
- gitconfig - Better colorscheme for git log

### Removed
- Installer scripts (including Brewfile) - Installer now in separate branch


## [1.0] - 2018-08-07
- Initial release
