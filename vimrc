syntax enable

packadd! onedark.vim

call plug#begin()
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
call plug#end()

let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_WildIgnore = {
  \ 'dir': ['.svn','.git','.hg','.vscode','.wine','.deepinwine','.oh-my-zsh','node_modules', 'dist'],
  \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
  \}
let g:Lf_RgConfig = [
  \ "--max-columns=150",
  \ "--glob=!node_modules/*",
  \ "--glob=!dist/*",
  \ "--glob=!yarn.lock"
  \ ]


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
set guioptions-=m

imap () ()<Left>
imap [] []<Left>
imap {} {}<Left>
imap "" ""<Left>
imap '' ''<Left>

colorscheme onedark
let g:onedark_termcolors=256
let g:lightline = {
  \ 'colorscheme': 'onedark',
  \ }
let g:airline_theme='onedark'

autocmd vimenter * NERDTree
let NERDTreeWinSize=25
nmap <F2> :NERDTree<CR>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'


let g:SuperTabDefaultCompletionType="context"

let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1
augroup javascript_folding
  au!
  au FileType javascript setlocal foldmethod=syntax
augroup END
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
let g:javascript_conceal_noarg_arrow_function = "🞅"
let g:javascript_conceal_underscore_arrow_function = "🞅"
set conceallevel=1

"需要安装https://github.com/powerline/fonts字体
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#branch#enabled = 1
set laststatus=2
nmap <F8> :TagbarToggle<CR>
