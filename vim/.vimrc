" Luke Shinn vim settings


" =============================================================================
"  General Settings
"==============================================================================
xnoremap p pgvy		  " allows more than 1 paste
set nocompatible          " dont try to be compatible with vi
syntax enable             " enable syntax processing
filetype plugin on        " load filetype-specific indent files
filetype indent on
set encoding=utf8         " set encoding
set t_Co=256              " explicitly tell vim that the terminal supports 256 colors
set ttyfast               " faster redrawing
set number                    " show line numbers
set relativenumber            " use relative lines
set title                     " show file name in window title
set cursorline                " highlight line with cursor
set showmatch                 " show matching brackets
set matchpairs+=<:>           " make < and > match as well
set mouse=a                   " enable mouse for scrolling
set showcmd                   " show current command in bottom right
set laststatus=2              " always show airline
set wildmenu                  " visual autocomplete for command menu
" set wildcharm=<TAB>           " auto completetion hotkey
" set lazyredraw                " redraw only when we need to
set list                      " show invisible characters
set listchars=tab:→\ ,trail:⋅ " list chars
set fillchars=vert:│          " set vert split character to taller line
set clipboard=unnamed         " Share Mac clipboard
set noswapfile	              " don’t make swap in vim
set omnifunc=syntaxcomplete#Complete

" autocmd vimenter * NERDTree   " load NERDtree on open
nmap <F5> :NERDTreeToggle<CR> " map f5 to toggle NERDtree
set autochdir                 " open window in same path as NT

" =============================================================================
"  Auto Completion
"==============================================================================

"set pumheight =8		" number of completions shown
"let g:ycm_min_num_of_chars_for_completion = 2 " you complete me settings
"let g:ycm_auto_trigger = 1
"let g:ycm_keep_logfiles = 1
"let g:ycm_log_level = 'debug'
"let g:ycm_key_invoke_completion = '<C-Space>'

" UltiSnip Settings
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"

				"YCM language scrips
" autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
" autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" autocmd FileType c set omnifunc=ccomplete#Complete

" omnifuncs for deplete
augroup omnifuncs
  autocmd!
  autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
  autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
  autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
  autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
  autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
augroup end
" tern
if exists('g:plugs["tern_for_vim"]')
  let g:tern_show_argument_hints = 'on_hold'
  let g:tern_show_signature_in_pum = 1
  autocmd FileType javascript setlocal omnifunc=tern#Complete
endif

" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
" let g:SuperTabDefaultCompletionType = '<c-n>'

" =============================================================================
"  Vim-Plug
"==============================================================================

" Vim plugged by junegunn https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

Plug 'valloric/matchtagalways'

Plug 'bling/vim-airline'	" adds bottom information bar

Plug 'jiangmiao/auto-pairs'	" Pair brackets and quotes

"Plug 'valloric/youcompleteme'	" auto completion dropdowns 

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
"Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Color-schemes
Plug 'flazz/vim-colorschemes' 

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Initialize plugin system
call plug#end()

" =============================================================================
"  Colors / Misc
"==============================================================================

colorscheme gruvbox
set background=dark




