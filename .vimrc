set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call plug#begin('~/.vim/plugged')
" Syntax
Plug 'posva/vim-vue'
Plug 'wavded/vim-stylus'
Plug 'elixir-lang/vim-elixir'
Plug 'isRuslan/vim-es6'
Plug 'zah/nim.vim'
Plug 'dag/vim-fish'

" Essential
Plug 'ctrlpvim/ctrlp.vim' " fuzzy finder
Plug 'w0rp/ale' " linter
Plug 'tpope/vim-fugitive' " git
Plug 'airblade/vim-gitgutter' " git sidebar
Plug 'tpope/vim-eunuch' " File command, renaming, deleting, etc
Plug 'zxqfl/tabnine-vim' " Autocomplete

" Experimental
Plug 'tpope/vim-surround'
Plug 'jceb/vim-orgmode'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-speeddating'
Plug 'vim-scripts/utl.vim'
Plug 'AndrewRadev/tagalong.vim'
Plug 'AndrewRadev/switch.vim'
Plug  'freitass/todo.txt-vim'
Plug 'rhysd/vim-grammarous'
Plug 'ryanoasis/vim-devicons'
 
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
nnoremap <leader>o :e ~/Documents/org/my.org
nnoremap <leader>x :Utl

au BufNewFile,BufRead *.jbuilder set ft=ruby
au BufNewFile,BufRead *Thorfile set ft=ruby
au BufNewFile,BufRead *Fastfile set ft=ruby
au BufNewFile,BufRead *.slim set ft=slim
au BufNewFile,BufRead *.es6 set ft=javascript
au BufNewFile,BufRead *Jenkinsfile set ft=javascript
au BufNewFile,BufRead *.hbs set ft=html
au BufNewFile,BufRead *.babelrc set ft=javascript
au BufNewFile,BufRead *.java set noexpandtab

imap jk <Esc>
imap kj <Esc>

let g:ctrlp_working_path_mode = ''
let g:ctrlp_show_hidden = 1
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v(git|hg|svn|node_modules|bower_components|tmp)$',
  \ }

let g:ale_linters = {'javascript': ['eslint']}
" let g:ale_fixers = {'javascript': ['eslint', 'prettier_eslint'], 'vue': ['prettier'], 'ruby': ['rubocop']}
let g:ale_fixers = {'javascript': ['eslint', 'prettier_eslint'], 'vue': ['prettier']}
let g:ale_fix_on_save = 1

let g:LanguageClient_serverCommands = {
  \ 'javascript': ['javascript-typescript-stdio']
  \ }


let g:grammarous#default_comments_only_filetypes = {
  \ '*' : 1, 'help' : 0, 'markdown' : 0,
  \ }
let g:grammarous#enabled_rules = {'*' : ['PASSIVE_VOICE']}
