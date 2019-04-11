set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin('~/.vim/plugged')
" Syntax
Plug 'posva/vim-vue'
Plug 'wavded/vim-stylus'
Plug 'slime-lang/vim-slime-syntax'
Plug 'elixir-lang/vim-elixir'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-haml'
Plug 'isRuslan/vim-es6'
Plug 'zah/nim.vim'
Plug 'dag/vim-fish'

" Essential
Plug 'ctrlpvim/ctrlp.vim' " fuzzy finder
Plug 'w0rp/ale' " linter
Plug 'tpope/vim-fugitive' " git
Plug 'airblade/vim-gitgutter' " git sidebar
Plug 'zxqfl/tabnine-vim'

" Experimental
Plug 'tpope/vim-eunuch' " File command, renaming, deleting, etc
Plug 'tpope/vim-surround'
Plug 'jceb/vim-orgmode'
Plug 'tpope/repeat'
Plug 'tpope/speeddating'
call plug#end()

set expandtab tabstop=2 softtabstop=0 shiftwidth=2 smarttab hlsearch splitbelow splitright
set smartindent autoindent
set noswapfile
set ignorecase smartcase
set mouse=a
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
