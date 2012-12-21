" from http://learnvimscriptthehardway.stevelosh.com
" pathogen
call pathogen#infect()
" colors
syntax on
autocmd FileType python colorscheme solarized
autocmd FileType ruby colorscheme jellybeans
" numbering
set relativenumber

"leader
let mapleader = ","
" remaps
nnoremap <leader>n :NERDTreeToggle<CR>
inoremap jk <esc>
inoremap <esc> <nop>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
