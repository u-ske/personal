set number
set ts=4

execute pathogen#infect()
syntax on
filetype plugin indent on

if has('vim_starting')
	set nocompatible               " Be iMproved
		   
	" Required:
	set runtimepath+=~/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" My Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck

nnoremap nt :NERDTreeToggle<CR>
nnoremap tn :tabnew<CR>
nnoremap tl gt<CR>
nnoremap th gT<CR>

nnoremap ss :split<CR>
nnoremap sv :vsplit<CR>

nnoremap sh <C-w>h<CR>
nnoremap sj <C-w>j<CR>
nnoremap sk <C-w>k<CR>
nnoremap sl <C-w>l<CR>
nnoremap sw <C-w>w<CR>

nnoremap s0 <C-w>=<CR>
nnoremap s> <C-w>><CR>
nnoremap s< <C-w><<CR>
nnoremap s+ <C-w>+<CR>
nnoremap s- <C-w>-<CR>
