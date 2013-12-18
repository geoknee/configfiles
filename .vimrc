" from http://learnvimscriptthehardway.stevelosh.com
" pathogen
call pathogen#infect()
" colors
syntax on
filetype plugin on 
filetype plugin indent on 
let g:pydiction_location = '/Users/geo/.vim/bundle/pydiction/complete-dict'
autocmd FileType python colorscheme solarized
autocmd FileType python set background=light
autocmd FileType ruby colorscheme jellybeans
autocmd FileType eruby colorscheme jellybeans
" automatically set working directory to the one pertaining to the current file
set autochdir
"alternatively have a shortcut that does it
nnoremap <leader>cd :cd %:p:h<CR>:pwd<CR>
" autoindent
set autoindent
" numbering
set relativenumber
set tabstop=4
"leader
let mapleader = ","
" remaps
nnoremap <leader>n :NERDTreeToggle<CR>
inoremap jk <esc>
inoremap <esc> <nop>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>w :w <cr>
nnoremap <leader>h <C-w>h 
nnoremap <leader>l <C-w>l 
nnoremap <leader>j <C-w>j 
nnoremap <leader>k <C-w>k 

"code folding
set foldmethod=manual
au BufWinLeave *.* mkview
au BufWinEnter *.* silent loadview
