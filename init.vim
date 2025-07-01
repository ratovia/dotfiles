" 
" dein.vim load
"
if &compatible
  set nocompatible
endif
" Add the dein installation directory into runtimepath
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein_lazy.toml', {'lazy': 1})

  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" lazygit
map <C-g> :terminal lazygit<CR>

" ファイルの形式を検出
filetype plugin indent on
" 文法ごとに色分け
syntax enable
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
colorscheme koehler
" コマンドラインの補完 - マッチするものをリスト表示しつつ、共通する最長の部分まで補完
set wildmode=list:longest
" 保存していなくても他のファイルを開ける
set hidden
" ハイライトをescで終了
nmap <Esc><Esc> :nohlsearch<CR><Esc>
" yでコピーした時にクリップボードに入る
" set guioptions+=a " GUI only option, commented out for terminal use
" ヤンクでクリップボードにコピー
set clipboard+=unnamed
" Shift + j(k)でライン移動
nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
nnoremap <C-n> :tabnew<CR>
" バッファの切り替え
nnoremap <silent> <C-j> :bprev<CR>
nnoremap <silent> <C-k> :bnext<CR>
" qを無効にする
nnoremap q <Nop>
nnoremap Q <Nop>


let g:python3_host_prog = expand('~/.asdf/shims/python3')

