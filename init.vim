"/dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/Users/sawaya/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('/Users/sawaya/.cache/dein')
  call dein#begin('/Users/sawaya/.cache/dein')

  " Let dein manage dein
  " Required:
  call dein#add('/Users/sawaya/.cache/dein/repos/github.com/Shougo/dein.vim')

  " Add or remove your plugins here like this:
  "call dein#add('Shougo/neosnippet.vim')
  "call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('airblade/vim-gitgutter')
  call dein#add('scrooloose/nerdtree')  
  call dein#add('fatih/vim-go')

  " Required:
  call dein#end()
  call dein#save_state()
endif

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

let g:deoplete#sources#jedi#server_timeout=100
let g:deoplete#sources#jedi#statement_length=100
" jedi本体の補完は切る（deoplete-jediで非同期処理をしてくれるため）
let g:jedi#completions_enabled = 0
let g:deoplete#enable_at_startup = 1
let g:deoplete#auto_completion_start_length = 1

" 検索・置換
" 小文字だけの検索は大文字小文字を無視し、大文字で検索した場合無視しない
set ignorecase
set smartcase
set wrapscan
set incsearch
set inccommand=split

" タブ幅
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set smarttab
set shiftround

" 括弧補完
inoremap { {}<Left>
inoremap {<Enter> {}<Left><CR><ESC><S-o>
inoremap ( ()<ESC>i
inoremap (<Enter> ()<Left><CR><ESC><S-o>

" ショートカット
nnoremap <silent><C-e> :NERDTreeToggle<CR>

" 行番号の表示
set number
