""dein Scripts-----------------------------
"if &compatible
"  set nocompatible               " Be iMproved
"endif
"
"" Required:
"set runtimepath+=/Users/kentokubo/.cache/dein/repos/github.com/Shougo/dein.vim
"
"" Required:
"call dein#begin('/Users/kentokubo/.cache/dein')
"
"" Let dein manage dein
"" Required:
"call dein#add('/Users/kentokubo/.cache/dein/repos/github.com/Shougo/dein.vim')
"
"" Add or remove your plugins here like this:
""call dein#add('Shougo/neosnippet.vim')
""call dein#add('Shougo/neosnippet-snippets')
"
"" Required:
"call dein#end()
"
"" Required:
"filetype plugin indent on
"syntax enable
"
" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
if exists('g:vscode')
    " VSCode extension
	set ignorecase
else
    " ordinary neovim
	"マウス有効化
	set mouse=a
	" allow change title
	set title
	" 改行コードを指定
	set fileformats=unix,dos,mac
	" 全角文字をちゃんと表示する
	set ambiwidth=double
	" auto reload on edit
	set autoread
	" closeしたバッファを(実際にはcloseせず)hiddenにする
	set hidden
	"colors
	colorscheme asu1dark
	" 空白文字等、不可視な文字の可視化
	set list
	set listchars=tab:>-,trail:*,nbsp:+
	" インデントとか 見ての通り
	set smartindent
	set visualbell
	
	" 検索関連
	" 大文字と小文字を区別しない
	set ignorecase
	" 混在しているときに限り区別
	set smartcase
	" 下まで行ったら上に戻る
	set wrapscan
	set encoding=utf-8
	" edita setting
	set number                                                      " 行番号表示
	set wildmenu                                                    " コマンドモードの補完
	" cursorl setting
	set ruler                                                       " カーソルの位置表示
	set cursorline                                                  " カーソルハイライト
endif

" ------------------------------------------------------------
"  key bind
"  caution : only insert keybinds are configured in vscode's keybinds.json
" ------------------------------------------------------------
"
" copy & paste map
nnoremap <Space>d "*dd
vnoremap <Space>d "*dd
nnoremap <Space>y "*yy
vnoremap <Space>y "*yy
nnoremap <Space>p "*p
vnoremap <Space>p "*p

" Insert Mode
inoremap <silent> jj <ESC>
" Insert mode movekey bind
inoremap <C-d> <BS>
inoremap <C-h> <Left>
inoremap <C-l> <Right>
inoremap <C-k> <Up>
inoremap <C-j> <Down>
xnoremap <C-j><C-j> <ESC>

