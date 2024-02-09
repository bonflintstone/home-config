:let $PATH = '/Users/bonflintstone/.local/share/nvm/v18.18.2/bin:' . $PATH

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

:silent exec "!nvm use 18"

call plug#begin('~/.vim/plugged')
" Syntax
" Plug 'posva/vim-vue'
" Plug 'wavded/vim-stylus'
" Plug 'elixir-lang/vim-elixir'
" Plug 'isRuslan/vim-es6'
" Plug 'zah/nim.vim'
" Plug 'dag/vim-fish'
" Plug 'jeffkreeftmeijer/vim-dim'
" Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
" Plug 'slim-template/vim-slim'
" Plug 'dart-lang/dart-vim-plugin'
" Plug 'othree/html5.vim'

" Essential
Plug 'ap/vim-css-color' " display colors
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'tami5/sql.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-smart-history.nvim'
Plug 'nvim-telescope/telescope-github.nvim'
Plug 'tpope/vim-fugitive' " git
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter' " git sidebar
Plug 'tpope/vim-eunuch' " File command, renaming, deleting, etc
Plug 'ryanoasis/vim-devicons' " Nice icons
Plug 'tpope/vim-abolish'
Plug 'Exafunction/codeium.vim' " gh copilot alternative
Plug 'prettier/vim-prettier'
Plug 'wsdjeg/vim-fetch' " enables `:e filename:32`

" Trying
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'sainnhe/sonokai' " colorscheme for treesitter
Plug 'xiyaowong/transparent.nvim'
Plug 'numToStr/Comment.nvim'

call plug#end()

set expandtab tabstop=2 softtabstop=0 shiftwidth=2 smarttab hlsearch splitbelow splitright
set noswapfile
set ignorecase smartcase
set mouse=a
set backupcopy=yes
set smartindent autoindent
set undofile
set tw=120
set foldlevelstart=20

syntax on
colo sonokai
let g:netrw_banner = 0

let mapleader = ' '
nnoremap <leader>e :Explore
nnoremap <leader>q :q
nnoremap <leader>w :w
nnoremap <leader>n :noh
nnoremap  <cmd>lua require('telescope.builtin').find_files({ hidden = true, no_ignore = false })<cr>
nnoremap <leader>/ <cmd>lua require('telescope.builtin').live_grep()<cr>
nnoremap <leader>* yiw<cmd>lua require('telescope.builtin').live_grep()<cr><cmd><cr>"
nnoremap <leader>g yiw<cmd>lua require('telescope').extensions.gh.pull_request()<cr>
nnoremap <leader>f :call CocActionAsync('format')<cr>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <RIGHT> :cnext<CR>
nmap <silent> <LEFT> :cprev<CR>
nmap <silent> <UP> :copen<CR>
nmap <silent> <DOWN> :cclose<CR>
" copy current file path with 'cp'
nmap <silent> cp :let @+ = expand("%")<CR>
nmap <silent> cpp :let @+ = expand("%") .. ':' .. line('.')<CR>

" Best silver searcher setup
if executable('ag') 
  " Note we extract the column as well as the file and line number
  set grepprg=ag\ --nogroup\ --nocolor\ --column\ --hidden
  set grepformat=%f:%l:%c%m
endif


au BufNewFile,BufRead *.jbuilder set ft=ruby
au BufNewFile,BufRead *Thorfile set ft=ruby
au BufNewFile,BufRead *Fastfile set ft=ruby
au BufNewFile,BufRead *.es6 set ft=javascript
au BufNewFile,BufRead *Jenkinsfile set ft=javascript
au BufNewFile,BufRead *.hbs set ft=html
au BufNewFile,BufRead *.babelrc set ft=javascript
au BufNewFile,BufRead *.inky set ft=haml
au BufNewFile,BufRead .env* set ft=conf
au BufNewFile,BufRead *.java set noexpandtab

au BufNewFile,BufRead *.markdown :setlocal spell spelllang=en_us
au BufNewFile,BufRead *.md :setlocal spell spelllang=en_us
au BufNewFile,BufRead *.help :setlocal spell spelllang=en_us
au BufNewFile,BufRead *.txt :setlocal spell spelllang=en_us

imap jk <Esc>
imap kj <Esc>

let g:gitgutter_sign_column_always = 1

hi Search cterm=underline
hi GitGutterAdd    ctermfg=2
hi GitGutterChange ctermfg=3
hi GitGutterDelete ctermfg=1
hi SignColumn ctermbg=none
hi TelescopeNormal guibg=#111111

lua << EOF
  require('telescope').setup{
    defaults = {
      file_ignore_patterns = { "ios/*", "android/*", ".gradle/*", "node_modules/*", "yarn.lock" },
      history = {
        path = '~/.local/share/nvim/databases/telescope_history.sqlite3',
        limit = 100,
      },
      mappings = {
        i = {
          ["<C-P>"] = require('telescope.actions').cycle_history_prev,
          ["<C-N>"] = require('telescope.actions').cycle_history_next,
          ["<C-J>"] = require('telescope.actions').move_selection_next,
          ["<C-K>"] = require('telescope.actions').move_selection_previous,
        },
      },
    },
  }

  require('telescope').load_extension('smart_history')

  require('Comment').setup()

  require("nvim-treesitter.configs").setup({
    highlight = {
      enable = true,
    },
    -- enable indentation
    indent = { enable = true },

    ensure_installed = {
      "bash",
      "css",
      "dockerfile",
      "gitignore",
      "graphql",
      "html",
      "javascript",
      "json",
      "lua",
      "markdown",
      "markdown_inline",
      "prisma",
      "query",
      "ruby",
      "svelte",
      "tsx",
      "typescript",
      "vim",
      "yaml",
    },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = " v",
        node_incremental = " v",
        scope_incremental = false,
        node_decremental = " b",
      },
     },
  })
EOF
