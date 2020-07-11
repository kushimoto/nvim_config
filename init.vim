"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state('$HOME/.cache/dein')
  call dein#begin('$HOME/.cache/dein')

  " TOML ファイルのパスを変数に代入
  let s:toml_dir = '$HOME/.config/nvim/toml'
  let s:toml = s:toml_dir . '/dein.toml'
  let s:lazy_toml = s:toml_dir . '/dein_lazy.toml'

  " TOML ファイルを読み込む
  call dein#load_toml(s:toml, {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " Required:
  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
endif

" Required:
filetype plugin indent on
syntax enable

"End dein Scripts-------------------------

set backspace=indent,eol,start
set number

noremap <silent><C-e> :NERDTreeToggle<CR>
colorscheme molokai
nnoremap <silent> <Leader>m :OverCommandLine<CR>

"起動時に実行(画面レイアウトを設定)
autocmd VimEnter * execute 'syntax on'
autocmd VimEnter * execute 'sp'
autocmd VimEnter * execute 'terminal'
autocmd VimEnter * call feedkeys("\<C-w>", "n")
autocmd VimEnter * call feedkeys("l", "n")
autocmd VimEnter * call feedkeys("\<C-w>", "n")
autocmd VimEnter * call feedkeys("x", "n")
autocmd VimEnter * execute 'NERDTreeToggle'
