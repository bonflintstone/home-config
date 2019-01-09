set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Syntax
Plugin 'slim-template/vim-slim.git'
Plugin 'posva/vim-vue'
Plugin 'wavded/vim-stylus'
Plugin 'slime-lang/vim-slime-syntax'
Plugin 'elixir-lang/vim-elixir'
Plugin 'kchmck/vim-coffee-script'
Plugin 'tpope/vim-haml'
Plugin 'isRuslan/vim-es6'
Plugin 'zah/nim.vim'
Plugin 'dag/vim-fish'

" Essential
Plugin 'ctrlpvim/ctrlp.vim' " fuzzy finder
Plugin 'w0rp/ale' " linter
Plugin 'tpope/vim-fugitive' " git
Plugin 'airblade/vim-gitgutter' " git sidebar

" Experimental
Plugin 'tpope/vim-eunuch' " File command, renaming, deleting, etc
Plugin 'tpope/vim-surround'
Plugin 'zxqfl/tabnine-vim'

call vundle#end()
filetype plugin indent on

set expandtab tabstop=2 softtabstop=0 shiftwidth=2 smarttab hlsearch splitbelow splitright
set smartindent autoindent
set noswapfile
set ignorecase smartcase
syntax on
colo slate
highlight Search cterm=underline
let g:netrw_banner = 0

" for ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zi,*/node_modules/*,*/bower_components/*,*.class

let mapleader = ' '
nnoremap <leader>e :Explore
nnoremap <leader>q :q
nnoremap <leader>w :w
nnoremap <leader>s :sp
nnoremap <leader>v :vsp
nnoremap <leader>t :tabe
nnoremap <leader>r :syntax sync minlines=2000
nnoremap <leader>n :noh
nnoremap <leader>b :term ++curwin tb

au BufNewFile,BufRead *.jbuilder set ft=ruby
au BufNewFile,BufRead *Thorfile set ft=ruby
au BufNewFile,BufRead *Fastfile set ft=ruby
au BufNewFile,BufRead *.slim set ft=slim
au BufNewFile,BufRead *.es6 set ft=javascript
au BufNewFile,BufRead *Jenkinsfile set ft=javascript
au BufNewFile,BufRead *.hbs set ft=html
au BufNewFile,BufRead *.babelrc set ft=javascript
au BufNewFile,BufRead *.java set noexpandtab

let g:ctrlp_working_path_mode = ''
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v(git|hg|svn|node_modules|bower_components|tmp)$',
  \ }

let g:ale_enabled = 0

map <C-n> :NERDTreeToggle<CR>
