set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'flazz/vim-colorschemes'
Plugin 'desert-warm-256'
Plugin 'fholgado/minibufexpl.vim'

call vundle#end()            " required
filetype plugin indent on    " required
syntax enable
let mapleader=","

" Colorscheme
"let g:solarized_termcolors=256
"set background=dark
colorscheme desert

set ruler
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set backspace=indent,eol,start
set autoindent
set copyindent
"set showmatch
set smarttab
set incsearch
"set nowrapscan
set hlsearch
set history=1000
set undolevels=1000
set wrap
set encoding=utf-8
set showcmd
set hidden " Controversial
set wildmenu
set wildmode=list:longest
"set visualbell
set number
"set relativenumber
set undofile
set ignorecase
set smartcase
set gdefault
set colorcolumn=80
set textwidth=79
set formatoptions=cqnr1
set cursorline
set nojoinspaces
set splitright

set splitbelow

set wildignore+=*.so,*.swp,*.zip,*.pyc
set wildignore+=*.o,*.out,*.obj,*.so,*.pyc
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*/.sass-cache/*
set wildignore+=*.swp,*~,._*

"set nobackup
"set noundofile

noremap <F1> <ESC>
nnoremap j gj
nnoremap k gk
nnoremap Y y$
"nnoremap / /\v
"vnoremap / /\v
nmap <tab> %
vmap <tab> %
nnoremap <leader><space> :nohlsearch<CR>


" Nerdtree
"map <C-e> <plug>NERDTreeTabsToggle<CR>
"map <leader>e :NERDTreeFind<CR>
nmap <leader>nt :NERDTreeFind<CR>
nmap <leader>n<space> :NERDTreeToggle<CR>
let NERDTreeShowBookmarks=1
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
let NERDTreeChDirMode=0
let NERDTreeQuitOnOpen=1
let NERDTreeMouseMode=2
let NERDTreeShowHidden=1
let NERDTreeKeepTreeInNewTab=1
let g:nerdtree_tabs_open_on_gui_startup=0


" Tagbar
nnoremap <silent> <leader>t<space> :TagbarToggle<CR>
let g:tagbar_autofocus = 1
let g:tagbar_autoclose = 1


" Ctrlp
"let g:ctrlp_custom_ignore = {
"\ 'dir':  '\v[\/]\.(git|hg|svn)$',
"\ 'file': '\v\.(exe|so|dll)$',
"\ 'link': 'some_bad_symbolic_links',
"\ }
let g:ctrlp_working_path_mode = 0
let g:ctrlp_follow_symlinks = 1
let g:ctrlp_custom_ignore = {
            \ 'dir':  '\.git$\|\.hg$\|\.svn$',
            \ 'file': '\.so$\|\.pyc$' }

nnoremap <leader>b :CtrlPBuffer<CR>


"Indent-guides
" let g:indent_guides_auto_colors = 0
autocmd filetype python,html,htmldjango,htmljinja :IndentGuidesEnable
let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermfg=none ctermbg=234
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd ctermfg=none ctermbg=235
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermfg=none ctermbg=235
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey
"let g:indent_guides_start_level = 2
"let g:indent_guides_guide_size = 1


"python-mode
let g:pymode_folding = 0
let g:pymode_rope_goto_definition_bind = '<leader>d<space>'
let g:pymode_lint_ignore = "E265,W0612,W0611"
let g:pymode_rope_completion = 0

set visualbell
set t_vb=


" cscope
function! LoadCscope()
    let db = findfile("cscope.out", ".;")
    if (!empty(db))
        let path = strpart(db, 0, match(db, "/cscope.out$"))
        set nocscopeverbose " suppress 'duplicate connection' error
        exe "cs add " . db . " " . path
        set cscopeverbose
    endif
endfunction
au BufEnter /* call LoadCscope()

nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR> 
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>    
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>    
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>    
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>    
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>    
nmap <C-\>i :cs find i ^<C-R>=expand("<cfile>")<CR>$<CR> 
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>    

set csprg=/usr/bin/cscope
set csto=1
set csverb


" minibufexpl 
let g:miniBufExplBuffersNeeded = 1

noremap <C-J>     <C-W>j
noremap <C-K>     <C-W>k
noremap <C-H>     <C-W>h
noremap <C-L>     <C-W>l

noremap <C-Down>  <C-W>j
noremap <C-Up>    <C-W>k
noremap <C-Left>  <C-W>h
noremap <C-Right> <C-W>l

command WQ wq
command Wq wq
command W w
command Q q
command WA wa
command Wa wa


nnoremap <silent> <leader>a<space> :A<CR>



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" LOCAL SETTING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" tags
set tags=./tags,tags


" ctrlp exclude
let g:ctrlp_mruf_case_sensitive = 0
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*.pyc


nnoremap <Alt-Left> <C-O>

" move to beginning/end of line
nnoremap B ^
nnoremap E $

set paste
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype scss setlocal ts=2 sts=2 sw=2
autocmd Filetype css setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=4 sts=4 sw=4
autocmd Filetype cpp setlocal ts=2 sts=2 sw=2

