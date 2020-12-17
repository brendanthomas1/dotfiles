" load customization
source ~/.custom_dotfiles/.vimrc

" set nocompatible
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
" Plugin 'ctrlpvim/ctrlp.vim'
" fzf is new and improved ctrlp?
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-endwise'

Plugin 'tpope/vim-rails'
Plugin 'elixir-lang/vim-elixir'
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'isRuslan/vim-es6'
Plugin 'posva/vim-vue'
Plugin 'ngmy/vim-rubocop'

call vundle#end()            " required
filetype plugin indent on    " required

" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate

" Appearance
set tabstop=2 shiftwidth=2 expandtab
set backspace=indent,eol,start

set relativenumber
set number
let g:NERDTreeShowLineNumbers=1
set foldmethod=indent
set foldlevel=99

" Syntax/colorscheme
syntax enable
" set background=dark
" colorscheme dracula

" Shortcuts
filetype plugin indent on
set splitright
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>wq :wq<CR>
inoremap jk <esc>
cnoremap fzf FZF

" Start NERDTree on vim
autocmd vimenter * NERDTree
" Close Vim if only Nerdtree is open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" highlight anything > 80 characters on one line
" augroup vimrc_autocmds
"   autocmd BufEnter * highlight OverLength ctermbg=59 ctermfg=30
"   autocmd BufEnter * match OverLength /\%81v.\+/
" augroup END
set textwidth=100
set colorcolumn=+1
hi ColorColumn ctermbg=59

" Ctrl P
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'

if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

" Sane Ignore For ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir': '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|data\|log\|tmp$',
  \ 'file': '\.exe$\|\.so$\|\.dat$'
  \ }

" Use vim-jsx in .js files too
let g:jsx_ext_required = 0

let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" fzf :Ag command - don't include file names
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, {'options': '--delimiter : --nth 4..'}, <bang>0)

