call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
"colorschemes
"Plug 'morhetz/gruvbox'
Plug 'flazz/vim-colorschemes'

Plug 'ycm-core/YouCompleteMe'

Plug 'jiangmiao/auto-pairs'

Plug 'octol/vim-cpp-enhanced-highlight'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Initialize plugin system
call plug#end()

set encoding=utf-8
set number	    "display number of line
set noexpandtab	"set tab as symbols of space
set tabstop=4	"set tab size = 4 space
set softtabstop=4
set shiftwidth=4
set hlsearch	"hightlight all concidence
set incsearch	"hightlight first concidence when type query
syntax on

"colorschemes
"let g:gruvbox_contrast_dark = 'medium'
"let g:gruvbox_italic = '1'
"let g:gruvbox_italicize_comments = '1'
"let g:gruvbox_number_column = 'bg1'
"let g:gruvbox_vert_split = 'green'
colorscheme materialbox				"angr, deus, dracula, github(light), happy_hacking, PaperColor, scheakur(dark),hybrud 
										"hybrid_materia, lmaterialbox
let g:materialbox_contrast_dark='medium'
let g:materialbox_italic = '1'
let g:materialbox_italicize_comments = '1'
let g:materialbox_vert_split = 'aqua'
"let s:number_column = s:bg1 
set background=dark
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'
let g:airline#extensions#tabline#enabled = 1
"mapping



map <C-n> :NERDTreeToggle<CR>
nmap , :tabp<CR>
nmap . :tabn<CR>
nmap < :tabfirst<CR>
nmap > :tablast<CR>
nmap <space>s :w<CR>
nmap <space>q :q!<CR>
nmap <C-t> :tabnew<CR>
nmap <C-r> :tabclose<CR>

