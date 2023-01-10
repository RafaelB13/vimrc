autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
autocmd VimEnter * NERDTree | wincmd p
autocmd BufWritePre *.go :silent call CocAction('runCommand', 'editor.action.organizeImport')
""" Change cursor
if $TERM_PROGRAM =~ "iTerm"
    let &t_SI = "\<Esc>]50;CursorShape=1\x7" " Vertical bar in insert mode
    let &t_EI = "\<Esc>]50;CursorShape=0\x7" " Block in normal mode
endif


"""autocmd FileType html
"""set omnifunc=htmlcomplete#CompleteTags

set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set nu
set smartcase
set noswapfile
set incsearch
set completeopt-=preview
set wildmenu
set laststatus=2
set ruler
set mouse=a
set cursorline
set ma

""" Line number
hi LineNr guifg=white ctermfg=darkgrey cterm=none

""" clone https://github.com/cocopon/iceberg.vim.git
""" >> copy colors/iceberg to ~/.vim/colors/iceberg.vim
""" colorscheme iceberg

call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
"""Plug 'Yggdroot/indentLine'  # BUGADO
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-dispatch'             "| Optional
Plug 'tpope/vim-projectionist'        "|
Plug 'noahfrederick/vim-composer'     "|
Plug 'noahfrederick/vim-laravel'
Plug 'yaegassy/coc-intelephense', {'do': 'yarn install --frozen-lockfile'}
Plug 'marlonfan/coc-phpls'
Plug 'shawncplus/phpcomplete.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'sts10/vim-pink-moon'
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'jiangmiao/auto-pairs'
Plug 'shougo/neocomplete.vim'
Plug 'cocopon/iceberg.vim'
" Run :PlugInstall to install the plugin.
call plug#end()

""" AUTOMATIC SAVE ('ESC')
"""inoremap <Esc> <Esc>:w<CR>

""" VIM AIRLINE
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

"""let g:lsc_auto_map = v:true

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let g:lsc_auto_map = v:true

""" SHOW TERMINAL
"""set termwinsize = "5*0"
"""bel term ++rows=2

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif


" USE TAB TO AUTOCOMPLETE
inoremap <silent><expr> <TAB> coc#pum#visible() ? coc#pum#confirm() : "\<C-g>u\<TAB>"

let g:neocomplete#enable_at_startup = 1
