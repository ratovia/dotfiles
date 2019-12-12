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
NeoBundle 'vim-scripts/Zenburn'
" colorschema
NeoBundle 'mrkn/mrkn256.vim'
NeoBundle 'jpo/vim-railscasts-theme'
NeoBundle 'therubymug/vim-pyte'
" NERDTree
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mattn/emmet-vim'
" def end if end の補完
NeoBundle 'tpope/vim-endwise'
" Vimステータスバーをカッコ良くする
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
call neobundle#end()
NeoBundleCheck
filetype plugin indent on

"文字コードUFT-8
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk
" Tab文字を半角スペースにする
set expandtab
" 現在の行をハイライト
set cursorline      
" 上と合わせることで行番号のみハイライト
hi clear CursorLine 
" 行番号を表示
set number
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
set autoindent
" インデントはスマートインデント
set smartindent
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
set title
" 行頭でのTab文字の表示幅
set shiftwidth=2
set pumheight=10
" マウス操作を有効にする
set mouse=a
" シンタックスハイライトの有効化
syntax on
" ステータスラインを常に表示
set laststatus=2
set statusline=%F%=%f%r
" コマンドラインの補完有効化
set wildmenu
" カラースキーマ
colorscheme railscasts
" コマンドラインの補完 - マッチするものをリスト表示しつつ、共通する最長の部分まで補完
set wildmode=list:longest

runtime! userautoload/*.vim
highlight LineNr ctermfg=darkred


" update : NeoBundleUpdate
" Unite
" VimFiler
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
