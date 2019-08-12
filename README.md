# Dotfiles

Shared config across linux, macOS, and android (termux) environments.

Managed by a bare git repository.

`master` branch is for common config shared across environments.

`linux`, `macos`, `android` branches are environment specific.

## Installation

```bash
git init --bare $HOME/.dotfiles
alias dotfiles-git='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles-git remote add origin git@github.com:[user]/dotfiles.git #use your forked repository url
dotfiles-git config status.showUntrackedFiles no
dotfiles-git fetch
dotfiles-git checkout master #or linux, macos, android branches
bash .install.sh
```

Create and edit a file `.gitconfig-identity` with the following template:

```
[user]
    email = "..."
    name = "..."
```
