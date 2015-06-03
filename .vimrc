set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
"
" " let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'


" The bundles you install will be listed here

filetype plugin indent on

augroup vimrc_autocmds
	autocmd!
	" highlight characters past column 120
	autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
	autocmd FileType python match Excess /\%120v.*/
	autocmd FileType python set nowrap
augroup END

Bundle 'jellybeans.vim'
Bundle 'jnurmine/Zenburn'
Bundle 'rosenfeld/conque-term'
Bundle 'LaTeX-Box-Team/LaTeX-Box'
Bundle 'Valloric/YouCompleteMe'

set spell spelllang=en_us

set ruler
set colorcolumn=81
set scrolloff=10
set guioptions=agim
set t_Co=256


Bundle 'tpope/vim-fugitive'

" The rest of your config follows here
"Bundle 'Lokaltog/powerline', {'rtp':'powerline/bindings/vim/'}
Bundle 'bling/vim-airline'
" Powerline setup
let g:airline_powerline_fonts = 1
"set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 9
"set guifont=Inconsolate-Powerline
set laststatus=2

"Bundle 'klen/python-mode'
" Python-mode
" Activate rope
" Keys:
" K             Show python docs
" <Ctrl-Space>  Rope autocomplete
" <Ctrl-c>g     Rope goto definition
" <Ctrl-c>d     Rope show documentation
" <Ctrl-c>f     Rope find occurrences
" <Leader>b     Set, unset breakpoint (g:pymode_breakpoint enabled)
" [[            Jump on previous class or function (normal, visual, operator
"modes)
" ]]            Jump on next class or function (normal, visual, operator
"modes)
" [M            Jump on previous class or method (normal, visual, operator
"modes)
" ]M            Jump on next class or method (normal, visual, operator
"modes)

" Documentation
let g:pymode_doc = 1
let g:pymode_doc_key = 'K'

"Linting
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
" Auto check on save
let g:pymode_lint_write = 1

" Support virtualenv
let g:pymode_virtualenv = 1

" Enable breakpoints plugin
let g:pymode_breakpoint = 1
let g:pymode_breakpoint_key = '<leader>b'

" syntax highlighting
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all

" Don't autofold code
let g:pymode_folding = 0






Bundle 'jeetsukumaran/vim-buffergator'
Bundle 'majutsushi/tagbar'
Bundle 'fs111/pydoc.vim'
"Bundle 'davidhalter/jedi-vim'
Bundle 'scrooloose/nerdtree'


" All plugins must be defined by now!
call vundle#end()            " required
filetype plugin indent on    " required

map <F2> :NERDTreeToggle<CR>


" Add line
set nu
"set relativenumber





" Use <leader>l to toggle display of whitespace
nmap <leader>l :set list!<CR>
" " And set some nice chars to do it with
set listchars=tab:»\ ,eol:¬
"
" automatically change window's cwd to file's dir
set autochdir
"
" " I'm prefer spaces to tabs
set tabstop=4
set shiftwidth=4
set expandtab
"
" " more subtle popup colors
if has ('gui_running')
    highlight Pmenu guibg=#cccccc gui=bold
endif

" Rebind jk to leave insert mode
:imap jk <Esc>

" Add supertab
"Bundle 'ervandew/supertab'

" Buffergator settings
let g:buffergator_suppress_keymaps = 1
let g:buffergator_autoexpand_on_split = 1
nnoremap <leader>c :BuffergatorToggle<CR>

" TagBar settings
nnoremap <leader>t :TagbarOpenAutoClose<CR>
let g:tagbar_left = 1

"noremap
nmap Q gqap


colorscheme zenburn
