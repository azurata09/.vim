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
Plug 'itchyny/calendar.vim'
Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'
Plug 'cohama/lexima.vim'

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

" calendar.vimをGoogleカレンダーと連携
let g:calendar_google_calendar = 1

" タブを有効化
let g:airline#extensions#tabline#enabled = 1

" Ctrl+Tabでタブを移動
nmap <C-Tab> <Plug>AirlineSelectNextTab

" タブに番号を振る
let g:airline#extensions#tabline#buffer_idx_mode = 1

" タブの番号を大きく表示
let g:airline#extensions#tabline#buffer_idx_format = {
	\ '0': '0 ',
	\ '1': '1 ',
	\ '2': '2 ',
	\ '3': '3 ',
	\ '4': '4 ',
	\ '5': '5 ',
	\ '6': '6 ',
	\ '7': '7 ',
	\ '8': '8 ',
	\ '9': '9 '
	\}

let g:ale_linters = {
\   'cpp': ['cpplint'],
\   'SQL':['write-good'],
\   'Text':['write-good', 'redpen'],
\   'cmake':['cmakelint'],
\   'fish':['fish -n flag'],
\   'LaTeX':['redpen', 'write-good', 'textlint'],
\   'markdown':['markdownlint', 'prettier', 'redpen', 'write-good'],
\   'python': ['pylint'],
\   'rust':['rustfmt'],
\   'vim':['vint'],
\ }

let g:ale_fixers = {
\   'bash':['language-server', 'shellcheck', 'trim_whitespace'],
\   'Dockerfile':['hadolint', 'remove_trailing_lines', 'trim_whitespace'],
\   'R':['styler', 'litr', 'remove_trailing_lines', 'trim_whitespace'],
\   'cpp': ['cppcheck', 'trim_whitespace'],
\   'fish':['fish -n flag', 'trim_whitespace'],
\   'go':['gofmt', 'goimports'],
\   'JavaScript':['eslint', 'prettier'],
\   'markdown': ['prettier'],
\   'python': ['add_blank_lines_for_python_control_statements', 'autopep8', 'mypy','reorder-python-imports', 'remove_trailing_lines', 'trim_whitespace'],
\   'rust':['rustfmt', 'remove_trailing_lines', 'trim_whitespace'],
\   'sh': ['spellcheck', 'shfmt', 'remove_trailing_lines', 'trim_whitespace'],
\   'sql': ['sqlfmt', 'sqlint', 'pgformatter'],
\   'vim': ['remove_trailing_lines', 'trim_whitespace'],
\   'XML': ['xmllint', 'trim_whitespace'],
\   'YAML':['yamllint', 'prettier'],
\ }
