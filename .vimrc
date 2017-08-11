"#移動系"

"shift + hjklで拡大移動
nnoremap J 10j
nnoremap K 10k
nnoremap L 10l
nnoremap H 10h

vnoremap J 10j
vnoremap K 10k
vnoremap L 10l
vnoremap H 10h

"insertnnomde 以外十字キー移動禁止
nnoremap <Up> <Nop>
nnoremap <Down> <Nop>
nnoremap <Left> <Nop>
nnoremap <Right> <Nop>

vnoremap <Up> <Nop>
vnoremap <Down> <Nop>
vnoremap <Left> <Nop>
vnoremap <Right> <Nop>


syntax on


"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
"貼り付け崩さない
set pastetoggle=<F9>
"クリボーの共有for OSX
set clipboard=unnamed
"vim8系backspaceでdelete死んだので追加
set backspace=indent,eol,start




" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
nnoremap j gj
nnoremap k gk

" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2
set nocompatible
filetype off

" 検索系
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
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>
set wildmenu " コマンドモードの補完
set history=500 " 保存するコマンド履歴の数
"NerdTree config
map <C-n> :NERDTreeToggle<CR>



  " Required:
set runtimepath+=~/.vim/bundle/neobundle.vim/

  " Required:
call neobundle#begin(expand('~/.vim/bundle/'))

  " Let NeoBundle manage NeoBundle
  " Required:
NeoBundleFetch 'Shougo/neobundle.vim'

  " My Bundles here:########################################################
NeoBundle 'mattn/emmet-vim'
" Rails向けのコマンドを提供する
 NeoBundle 'tpope/vim-rails'
" Ruby向けにendを自動挿入してくれる
 NeoBundle 'tpope/vim-endwise'
 NeoBundle 'tpope/vim-surround'
 NeoBundle 'scrooloose/nerdtree'

call neobundle#end()

  " Required:
filetype plugin indent on

  " If there are uninstalled bundles found on startup,
  " this will conveniently prompt you to install them.
NeoBundleCheck


