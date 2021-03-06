let mapleader = " "

source ~/.config/nvim/plugins/plugins.vim
source ~/.config/nvim/configs/smartinput.vim
source ~/.config/nvim/configs/webdev.vim
source ~/.config/nvim/coc-configs/coc-configs.vim

set number
set relativenumber
set mouse=a
set nowrap
set ruler

" Map jk to <Esc>
inoremap jk <Esc>
tnoremap jk <Esc>

" Turn off last search highlighting
nnoremap <Leader>h :noh<CR>

" Prettier setup
command! -nargs=0 Prettier :CocCommand prettier.formatFile
nnoremap <Leader>i :Prettier<CR>
vnoremap <Leader>i :Prettier<CR>

" Use theme
if (has("termguicolors"))
  set termguicolors
endif
syntax enable
set background=dark
let g:gruvbox_material_background = 'hard'
colorscheme gruvbox-material
" colorscheme gruvbox
" colorscheme iceberg
" colorscheme codedark

" Use Space + / to comment out code
nnoremap <Leader>/ :Commentary<CR>
vnoremap <Leader>/ :Commentary<CR>

" Configure terminal and moving between windows
tnoremap <Esc> <C-\><C-n>
tnoremap <C-h> <C-\><C-N><C-w>h
tnoremap <C-j> <C-\><C-N><C-w>j
tnoremap <C-k> <C-\><C-N><C-w>k
tnoremap <C-l> <C-\><C-N><C-w>l
inoremap <C-h> <C-\><C-N><C-w>h
inoremap <C-j> <C-\><C-N><C-w>j
inoremap <C-k> <C-\><C-N><C-w>k
inoremap <C-l> <C-\><C-N><C-w>l
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Open terminal on ctrl + t
function! OpenTerminal()
	split term://bash
	resize 10
endfunction
nnoremap <C-t> :call OpenTerminal()<CR>

" Open new split panes to right and below
set splitright
set splitbelow

" Configure fzf
nnoremap <C-p> :FZF<CR>
let g:fzf_action = {
	\ 'enter': 'tab split',
	\ 'ctrl-s': 'split',
	\ 'ctrl-v': 'vsplit'
	\}
