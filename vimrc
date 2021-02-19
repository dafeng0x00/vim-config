syntax enable

packadd! onedark.vim

set nu 
set tabstop=2
set shiftwidth=2
set showmatch
set expandtab
set hlsearch
set cursorline
"set cursorcolumn
set autoindent
set cindent
set smartindent
set term=screen

imap () ()<Left>
imap [] []<Left>
imap {} {}<Left>
imap "" ""<Left>
imap '' ''<Left>

colorscheme onedark
let g:onedark_termcolors=256
let g:lightline = {'colorscheme': 'onedark'}

autocmd vimenter * NERDTree
let NERDTreeWinSize=25
nmap <F2> :NERDTree<CR>

let g:SuperTabDefaultCompletionType="context"

"需要安装https://github.com/powerline/fonts字体
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
set laststatus=2
nmap <F8> :TagbarToggle<CR>
