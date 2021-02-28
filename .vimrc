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
Plug 'ap/vim-css-color'
Plug 'jeffkreeftmeijer/vim-dim'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'slim-template/vim-slim'
Plug 'dart-lang/dart-vim-plugin'

" Essential
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'tpope/vim-fugitive' " git
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter' " git sidebar
Plug 'tpope/vim-eunuch' " File command, renaming, deleting, etc
Plug 'ryanoasis/vim-devicons' " Nice icons
Plug 'glacambre/firenvim', { 'do': { _ -> firenvim#install(0) } } " Vim in the browser
 
call plug#end()

set expandtab tabstop=2 softtabstop=0 shiftwidth=2 smarttab hlsearch splitbelow splitright
set smartindent autoindent
set noswapfile
set ignorecase smartcase
set mouse=a
set backupcopy=yes
set signcolumn="yes:1"

syntax on
" colo dim
let g:netrw_banner = 0

let mapleader = ' '
nnoremap <leader>e :e %:p:h
nnoremap <leader>q :q
nnoremap <leader>w :w
nnoremap <leader>s :sp
nnoremap <leader>v :vsp
nnoremap <leader>t :tabe
nnoremap <leader>r :syntax sync minlines=2000
nnoremap <leader>n :noh
nnoremap <leader>f :CocFix
nnoremap  <cmd>lua require('telescope.builtin').find_files()<cr>
nnoremap <leader>/ <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>a :CocAction
nnoremap <leader>c :CocCommand

au BufNewFile,BufRead *.jbuilder set ft=ruby
au BufNewFile,BufRead *Thorfile set ft=ruby
au BufNewFile,BufRead *Fastfile set ft=ruby
au BufNewFile,BufRead *.es6 set ft=javascript
au BufNewFile,BufRead *Jenkinsfile set ft=javascript
au BufNewFile,BufRead *.hbs set ft=html
au BufNewFile,BufRead *.babelrc set ft=javascript
au BufNewFile,BufRead *.inky set ft=haml
au BufNewFile,BufRead *.java set noexpandtab

au BufNewFile,BufRead *.markdown :setlocal spell spelllang=en_us
au BufNewFile,BufRead *.help :setlocal spell spelllang=en_us
au BufNewFile,BufRead *.txt :setlocal spell spelllang=en_us

imap jk <Esc>
imap kj <Esc>

let g:gitgutter_sign_column_always = 1

highlight Search cterm=underline
highlight GitGutterAdd    ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
highlight SignColumn ctermbg=none

let g:firenvim_config = {
    \ 'globalSettings': {
        \ 'alt': 'all',
    \  },
    \ 'localSettings': {
        \ '.*': {
            \ 'cmdline': 'neovim',
            \ 'content': 'text',
            \ 'priority': 0,
            \ 'selector': 'textarea',
            \ 'takeover': 'never',
        \ },
    \ }
    \ }

lua << EOF
  require('telescope').setup{
    defaults = {
      file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
      grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
      qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
      file_ignore_patterns = { "ios/*", "android/*" },
    }
  }
EOF
