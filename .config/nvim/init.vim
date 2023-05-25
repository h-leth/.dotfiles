set nocompatible              " required
filetype off                  " required
set number

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
Plugin 'preservim/nerdtree'
Plugin 'nvim-lua/plenary.nvim'
Plugin 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plugin 'preservim/tagbar'
Plugin 'jiangmiao/auto-pairs'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-airline/vim-airline'
Plugin 'dense-analysis/ale'
Plugin 'neoclide/coc.nvim', {'branch': 'release'}
" Color schemes
Plugin 'vim-airline/vim-airline-themes'
Plugin 'morhetz/gruvbox'
" Python
Plugin 'tell-k/vim-autopep8'
Plugin 'davidhalter/jedi-vim'
" Rust
Plugin 'rust-lang/rust.vim'
Plugin 'racer-rust/vim-racer'

" ...

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"nerdtree
let g:NERDTreeNodeDelimiter = "\u00a0"

nnoremap <silent> <C-p> :NERDTreeToggle<CR>
nnoremap <silent> <F2> :NERDTreeFind<CR>

nnoremap <F4> :TagbarToggle<CR>

nnoremap <C-LeftMouse> :ALEGoToDefinition<CR>

"allow clipboard copy paste in neovim
if exists("g:neovide")
  let g:neovide_input_use_logo=v:false
  map <D-v> "+p<CR>
  map! <D-v> <C-R>+
  tmap <D-v> <C-R>+
  vmap <D-c> "+y<CR> 
endif

"get syntax
syntax on

"set default indent
set tabstop=2
set softtabstop=2
set shiftwidth=2

"backspace
set backspace=indent,eol,start

"split navigations
nnoremap <c-j> <c-w><c-j>
nnoremap <c-k> <c-w><c-k>
nnoremap <c-l> <c-w><c-l>
nnoremap <c-h> <c-w><c-h>

"wildmenu
set wildmenu
set wildmode=longest:full,full
set wildoptions=pum

"permanent undo
set undodir=~/.vimdid
set undofile

"autocomplete
set completeopt=longest,menuone,menu

"keybinds for autocompletions
inoremap <expr> <Tab> coc#pum#visible() ? coc#pum#confirm() : "\<Tab>"
inoremap <expr> <Esc> coc#pum#visible() ? coc#pum#stop() : "\<Esc>"
inoremap <expr> <S-j> coc#pum#visible() ? coc#pum#next(1) : "\<S-j>"
inoremap <expr> <S-k> coc#pum#visible() ? coc#pum#prev(1) : "\<S-k>"

"highlight search enabled
set hlsearch

"leader shortcuts
let mapleader = " "
map <leader>h :noh<cr>
"quick-save
map <leader>w :w<cr>
"quite
map <leader>qq :bd<cr>
map <leader>qa :q<cr>
map <leader>wq :wq<cr>
"buffers
map <leader>, :buffers<CR>
map <leader><leader> <c-^>
map <leader><left> :bp<CR>
map <leader><right> :bn<CR>

"Find files using Telescope command-line sugar.
nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>fg :Telescope live_grep<cr>
nnoremap <leader>fb :Telescope buffers<cr>
nnoremap <leader>fh :Telescope help_tags<cr>

"color
colorscheme gruvbox 
set bg=dark

"vertical ruler
let &colorcolumn="80,".join(range(120,999),",")

let g:neovide_cursor_animation_length = 0

let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'

let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_set_balloons = 1

let g:indent_guides_enable_on_vim_startup = 1
