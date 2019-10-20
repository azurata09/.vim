" 読み込むプラグインを記載
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'nathanaelkane/vim-indent-guides'
Plug 'w0ng/vim-hybrid'
Plug 'simeji/winresizer'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'Shougo/neocomplete.vim'
Plug 'docunext/closetag.vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

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

" neocomplete起動
let g:neocomplete#enable_at_startup = 1

" 下部テーマ
let g:airline_powerline_fonts = 1
let g:airline_theme='papercolor'

" エラー時はX, 警告時は!を表示
let g:ale_sign_error = 'X'
let g:ale_sign_warning = '!'
