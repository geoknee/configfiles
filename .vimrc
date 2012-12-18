" from http://learnvimscriptthehardway.stevelosh.com
" pathogen
call pathogen#infect()
" colors
syntax on
autocmd FileType python colorscheme ir_black
autocmd FileType ruby colorscheme jellybeans
" numbering
set relativenumber

"leader
let mapleader = ","
" remaps
nnoremap <leader>n :NERDTreeToggle<CR>
inoremap jk <esc>
inoremap <esc> <nop>
