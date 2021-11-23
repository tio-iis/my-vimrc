" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" For golang
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'hrsh7th/vim-vsnip'
Plug 'hrsh7th/vim-vsnip-integ'
Plug 'mattn/vim-goimports'

" For footer
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" For colorscheme
Plug 'w0ng/vim-hybrid', {'do': 'cp colors/* ~/.vim/colors/'}

" Initialize plugin system
call plug#end()


" Base settings
set number
set tabstop=4
set shiftwidth=4

" For golang
let g:lsp_settings = {
  \   'gopls': {
  \     'initialization_options': {
  \       'usePlaceholders': v:true,
  \     },
  \   },
  \ }


" For color
set t_Co=256
set background=dark
colorscheme hybrid

" For vim-airline
let g:airline#extensions#tabline#enabled = 1
