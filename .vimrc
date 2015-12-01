syntax on
set expandtab
set tabstop=4
set number
set wildmenu
set showmatch
set hlsearch
set tags=tags;

" search for visually hightlighted text
vnoremap <c-f> y<ESC>/<c-r>"<CR>   

syntax enable

colorscheme solarized

set t_Co=256
let g:solarized_termcolors=256

" to turn off vim's background colour, so can just use the terminal background color
hi Normal ctermbg=none 

au BufEnter *.py set tw=79 colorcolumn=79 ts=4 sw=4 et
autocmd BufWritePre *.py :%s/\s\+$//e

" Pylint for vim
autocmd FileType python set makeprg=pylint\ --reports=n\ --msg-template=\"{path}:{line}:\ {msg_id}\ {symbol},\ {obj}\ {msg}\"\ %:p
autocmd FileType python set errorformat=%f:%l:\ %m

set nocompatible              " be iMproved, required
filetype off                  " required

" tab mappings
map <C-Tab> :tabn <CR>
map <C-S-Tab> :tabp <CR>


" Fast window resizing with +/- keys (horizontal); / and * keys (vertical)
if bufwinnr(1)
  map <down> <C-W>+
  map <up> <C-W>-
  map <right> <c-w><
  map <left> <c-w>>
endif

" CtrlP settings
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" YCM stuff
let g:ycm_global_ycm_extra_conf = '/home/mwagler/.ycm_extra_conf.py'
let g:ycm_extra_conf_globlist = ['~/*']

" THIS EATS TONS OF MEMORY, SO DON'T SET IT TO 1
let g:ycm_collect_identifiers_from_tags_files=0


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'kien/ctrlp.vim'
Plugin 'rking/ag.vim'
Plugin 'git://github.com/altercation/vim-colors-solarized.git'
Plugin 'christoomey/vim-tmux-navigator'
Plugin  'rdnetto/YCM-Generator'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" " plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" " Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" " git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" " The sparkup vim script is in a subdirectory of this repo called vim.
" " Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" " Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
