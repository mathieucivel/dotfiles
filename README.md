# My Dotfiles

Managed by a bare git repository.

## Fist initialization

```bash
git init --bare $HOME/.dotfiles
alias dotfiles-git='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
dotfiles-git config status.showUntrackedFiles no
```

## Install in new environment

```bash
git clone --separate-git-dir=$HOME/.dotfiles [git@github.com:22]:mathieucivel/dotfiles.git $HOME/dotfiles-tmp
cp ~/dotfiles-tmp/ ~
rm -r ~/dotfiles-tmp/
alias dotfiles-git='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

