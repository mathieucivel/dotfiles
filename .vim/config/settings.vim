"general
set wrap

" colors
let g:gruvbox_contrast_dark='hard'
set background=dark
colorscheme gruvbox

" tabs
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

" gutter
set number relativenumber
augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set number relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set nonumber norelativenumber
augroup END
