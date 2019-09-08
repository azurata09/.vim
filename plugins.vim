" 読み込むプラグインを記載
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'w0ng/vim-hybrid'
Plug 'simeji/winresizer'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
