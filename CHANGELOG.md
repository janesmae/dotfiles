# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](http://keepachangelog.com/en/1.0.0/)
and this project adheres to [Romantic Versioning](http://dafoster.net/articles/2015/03/14/semantic-versioning-vs-romantic-versioning/).

## [Unreleased]
### Added
- New feature

### Changed
- Changes in existing functionality
- Updated ansible configuration

### Deprecated
- Soon-to-be removed feature

### Removed
- Removed feature

### Fixed
- Bugfix

### Security
- Fixed vulnerability


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
