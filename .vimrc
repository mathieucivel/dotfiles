set nocompatible  " be iMproved, required
filetype off      " required

source ~/.vim/config/plugins.vim
source ~/.vim/config/visual-at.vim
source ~/.vim/config/keybindings.vim
source ~/.vim/config/settings.vim 


if filereadable('.local.vim')
  source .local.vim
endif

