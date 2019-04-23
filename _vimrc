" mkdir -p ~/.vim/bundle
" git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
filetype off
if has('vim_starting')
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

call neobundle#begin(expand('~/.vim/bundle/'))

NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler'
NeoBundle 'Townk/vim-autoclose'
NeoBundle 'ujihisa/unite-colorscheme'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'croaker/mustang-vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'vim-scripts/Lucius'
NeoBundle 'vim-scripts/Zenburn'
NeoBundle 'mrkn/mrkn256.vim'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'therubymug/vim-pyte'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mattn/emmet-vim'
NeoBundle 'tomasr/molokai'
NeoBundle 'tpope/vim-rails'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
call neobundle#end()
NeoBundleCheck
filetype plugin indent on


set fenc=utf-8
set nobackup
set noswapfile
set autoread
set hidden
set showcmd
set virtualedit=onemore
set visualbell
set showmatch
nnoremap j gj
nnoremap k gk
set expandtab
set ruler
set incsearch
set nocompatible
set number
set backspace=indent,eol,start
set autoindent
set smartindent
set tabstop=2
set title
set shiftwidth=2
set pumheight=10
set mouse=a
syntax on
set laststatus=2
set statusline=%F%=%f%r
set runtimepath+=~/.vim/
set wildmenu
colorscheme mrkn256 
runtime! userautoload/*.vim
highlight LineNr ctermfg=darkred


" update : NeoBundleUpdate
" Unite
" VimFiler
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
nnoremap <C-]> g<C-]>
