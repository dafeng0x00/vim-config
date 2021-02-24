syntax enable

packadd! onedark.vim

call plug#begin()
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()

"let $GTAGSLABEL = 'native-pygments'
"let $GTAGSCONF = '~/.vim/gtags.conf'
"let $GTAGSLABEL = 'pygments'
"let $GTAGSCONF = '/Users/mac/vim-config/gtags.conf'

let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_GtagsSource = 1
let g:Lf_GtagsAutoGenerate = 1
let g:Lf_Gtagsconf = '/Users/mac/vim-config/gtags.conf'
"需要安装https://github.com/universal-ctags/ctags
"let g:Lf_Ctags = '/usr/local/bin/ctags'
let g:Lf_Gtagslabel = 'native-pygments'
"解析js需要安装 pip install pygments'
"let g:Lf_Gtagslabel = 'pygments'
"let g:Lf_Gtagslabel = 'new-ctags'
let g:Lf_GtagsSkipUnreadable = 1
let g:Lf_WildIgnore = {
  \ 'dir': ['.svn','.git','.hg','.vscode','.wine','.deepinwine','.oh-my-zsh','node_modules', 'dist'],
  \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
  \ }
let g:Lf_RgConfig = [
  \ "--max-columns=150",
  \ "--glob=!node_modules/*",
  \ "--glob=!dist/*",
  \ "--glob=!yarn.lock"
  \ ]

let g:LanguageClient_serverCommands = {
  \ 'vue': ['vls']
  \ }

let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

"let g:indentLine_setColors = 0
"let g:indentLine_defaultGroup = 'SpecialKey'
"let g:indentLine_color_term = 239
let g:indentLine_char = 'space'
let g:indentLine_char_list = ['|', '¦', '┆', '┊']
"let g:indentLine_concealcursor = 'inc'
"let g:indentLine_conceallevel = 2
let g:indentLine_setConceal = 1
let g:indentLine_enabled = 1


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
nmap <F2> :NERDTree<CR>
let NERDTreeWinSize=25
let NERDTreeShowHidden=1
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
