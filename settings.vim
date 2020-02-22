" --------
" システム
" --------

" ファイル上書き前のバックアップ作成を無効化
set nowritebackup
set nobackup

" 文字がなくても右へ進める
set virtualedit=block

" 挿入モードでバックスペースを有効化
set backspace=indent,eol,start

" 全角文字
set ambiwidth=double

" wildmenuオプションを有効化
set wildmenu

" ターミナルカラーを256色に変更
set t_Co=256

" 矢印キーを入力した際にその方向にカーソルを移動
noremap <Up> <Up>
noremap <Down> <Down>
noremap <Left> <Left>
noremap <Right> <Right>

" デフォルトの文字コードをutf-8に指定
set encoding=utf-8
scriptencoding utf-8

" swpファイル出力無効
set noswapfile

" バックアップファイル出力無効
set nobackup

" undoファイル出力無効
set noundofile

" --------
" 検索関連
" --------

" 検索するときに大文字小文字を区別しない
set ignorecase

" 小文字で検索すると大文字と小文字を無視して検索
set smartcase

" 検索が末尾まで進んだら、ファイル先頭から再び検索
set wrapscan

" インクリメンタル検索
set incsearch

" 検索結果をハイライト
set hlsearch

" --------
" 表示設定
" --------

" 改行コードを表示
set fileformats=unix,dos,mac

" エラー時のビープ音を無効化
set noerrorbells


" 対応するカッコやブレースを表示
set showmatch matchtime=1

" インデント方法の変更
set cinoptions+=:0

" タブ入力を複数の空白入力に置き換える
set expandtab

" 画面上でタブ文字が占める幅
set tabstop=2

" 自動インデントでずれる幅
set shiftwidth=2

" 連続した空白に対してタブキーやバックスペースキーでカーソルが動く幅
set softtabstop=2

" 改行時に前の行のインデントを継続する
set autoindent

" 改行時に入力された行の末尾に合わせて次の行のインデントを増減する
set smartindent

" メッセージ表示欄を2行確保
set cmdheight=2

" ステータス行を常に表示
set laststatus=2

" ウィンドウの右下にまだ実行していない入力中のコマンドを表示
set showcmd

" 省略されずに表示
set display=lastline

" 行末スペースを可視化
set listchars=tab:^\ ,trail:~

" コマンドラインの履歴を10000件保存する
set history=10000

" コメントの色を水色
hi Comment ctermfg=3

" ツールバー非表示
set guioptions-=T

" yでコピーしたときにクリップボードに入る
set guioptions+=a

" メニューバーを非表示にする
set guioptions-=m

" 右スクロールバーを非表示
set guioptions+=R

" 対応するカッコを強調
set showmatch

" 検索にマッチした行以外を折りたたむ機能
set nofoldenable

" タイトルを表示
set title

" 行番号の表示
set number

" シンタックスハイライトを有効化
syntax on

" すべての数を10進数として扱う
set nrformats=

" 行を跨いで移動
set whichwrap=b,s,h,l,<,>,[,],~

" バッファスクロール
set mouse=a

" .vimrcをホットリロード
augroup source-vimrc
  autocmd!
  autocmd BufWritePost *vimrc source $MYVIMRC | set foldmethod=marker
  autocmd BufWritePost *gvimrc if has('gui_running') source $MYGVIMRC
augroup END

" auto comment off
augroup auto_comment_off
  autocmd!
  autocmd BufEnter * setlocal formatoptions-=r
  autocmd BufEnter * setlocal formatoptions-=o
augroup END

" 編集箇所のカーソルを記憶
if has("autocmd")
  augroup redhat
    " In text files, always limit the width of text to 78 characters
    autocmd BufRead *.txt set tw=78
    " When editing a file, always jump to the last cursor position
    autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g'\"" |
    \ endif
  augroup END
endif

set helplang=ja,en
