set title  " Muestra el nombre del archivo en la ventana de la terminal
set number  " Muestra los números de las líneas set mouse=a  " Permite la integración del mouse (seleccionar texto, mover el cursor)
set nocompatible
set nowrap  " No dividir la línea si es muy larga

set cursorline  " Resalta la línea actual
set colorcolumn=120  " Muestra la columna límite a 120 caracteres

" Indentación a 2 espacios
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set expandtab  " Insertar espacios en lugar de <Tab>s

set hidden  " Permitir cambiar de buffers sin tener que guardarlos

set ignorecase  " Ignorar mayúsculas al hacer una búsqueda
set smartcase  " No ignorar mayúsculas si la palabra a buscar contiene mayúsculas

set spelllang=en,es  " Corregir palabras usando diccionarios en inglés y español
syntax enable
set showcmd
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
call plug#begin('~/.local/share/nvim/plugged')

" Aquí irán los plugins a instalar
Plug 'ryanoasis/vim-devicons'
Plug 'neoclide/coc.nvim'
Plug 'joshdick/onedark.vim'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'  " Temas para airline
Plug 'luochen1990/rainbow'
Plug 'Yggdroot/indentLine'
Plug 'ervandew/supertab'
Plug 'sheerun/vim-polyglot'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'JulesWang/css.vim'
Plug 'jiangmiao/auto-pairs'
Plug 'xuyuanp/nerdtree-git-plugin'
Plug 'airblade/vim-gitgutter'
Plug 'cakebaker/scss-syntax.vim'
"Plug 'epilande/vim-react-snippets'
"Plug 'SirVer/ultisnips'
Plug 'scrooloose/nerdcommenter'
call plug#end()
set termguicolors  " Activa true colors en la terminal
colorscheme onedark  " Activa tema onedark
map <F2> :NERDTreeToggle<CR>
"NERD_tree
let NERDTreeQuitOnOpen=1 
"airline
let g:airline#extensions#tabline#enabled = 1  " Mostrar buffers abiertos (como pestañas)
let g:airline#extensions#tabline#fnamemod = ':t'  " Mostrar sólo el nombre del archivo

" Cargar fuente Powerline y símbolos (ver nota)
let g:airline_powerline_fonts = 1

" No mostrar en ciertos tipos de buffers y archivos
let g:indentLine_fileTypeExclude = ['text', 'sh', 'help', 'terminal']
let g:indentLine_bufNameExclude = ['NERD_tree.*', 'term:.*']
"tab
let g:SuperTabDefaultCompletionType = '<c-n>'
" Actualizar barra cada 250 mili segundos
set updatetime=250


"map
let g:mapleader=" "
nnoremap w :w<CR>
nnoremap q :q<CR>
nnoremap qq :q!<CR>
nnoremap ss :wq<CR>
nnoremap <Leader>i :PlugInstall<CR>
nnoremap <Leader>c :PlugClean<CR>
nnoremap <Leader>u :PlugUpdate<CR>
nnoremap <Leader>up :PlugUpgrade<CR>
nnoremap <Leader>a :RainbowToggleOn<CR>
nmap <Leader>gd <Plug>(coc-definition)
nmap <Leader>gy <Plug>(coc-type-definition)
nmap <Leader>gi <Plug>(coc-implementation)
nmap <Leader>gr <Plug>(coc-references)
