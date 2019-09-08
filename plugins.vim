" 読み込むプラグインを記載
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'w0ng/vim-hybrid'
Plug 'simeji/winresizer'
" Plug 'vim-airline/vim-airline'
" Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'
Plug 'ryanoasis/vim-devicons'
Plug 'Shougo/vimproc.vim', {'do': 'make'}
Plug 'Shougo/vimshell.vim'

call plug#end()

" インデントガイド起動
let g:indent_guides_enable_on_vim_startup = 1

" 読み込んだプラグインも含めファイルタイプの検出、どうのこうの
filetype plugin indent on

" カラースキーマ
colorscheme hybrid

" 隠しファイルも常に表示
let NERDTreeShowHidden = 1

" NERDTree起動
autocmd VimEnter * execute 'NERDTree'

" eでタブ作成
" let g:airline#extensions#tabline#enabled = 1

" 下部テーマ
" let g:airline_theme='base16_vim'

let g:lightline = {
  \ 'colorscheme': 'seoul256',
  \ }
