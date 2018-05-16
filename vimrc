colorscheme onehalflight-benjamin

set exrc "allows local .vimrc in directory
set clipboard=unnamedplus "paste from/to clipboard
set formatoptions-=r "do not insert comment leader in new lines
set formatoptions-=o "do not insert comment leader in new lines

"BEGIN view
set statusline=[%n]\ %t
set guifont=Monospace\ 11
set scrolloff=3
set showcmd
set tabstop=4
set shiftwidth=4
set whichwrap+=>,l
set whichwrap+=<,h
autocmd FileType cpp,c,cxx,h,hpp setlocal cc=80
autocmd FileType cpp,c,cxx,h,hpp setlocal shiftwidth=2
autocmd FileType cpp,c,cxx,h,hpp setlocal tabstop=2
autocmd FileType cpp,c,cxx,h,hpp setlocal expandtab
"END view

"BEGIN line numbers
set number relativenumber
"autocmd!
autocmd BufEnter,FocusGained,InsertLeave,WinEnter,CmdwinEnter * if &nu | set rnu   | endif
autocmd BufLeave,FocusLost,InsertEnter,WinLeave,CmdwinLeave   * if &nu | set nornu | endif
"END line numbers

"BEGIN search settings
set incsearch
set ignorecase
set smartcase
highlight IncSearch ctermbg=green 
"END search settings

"BEGIN word wrapping
set wrap
set linebreak
set nolist 
set textwidth=0
set wrapmargin=0
set formatoptions-=t
"END word wrapping

"BEGIN comment/uncomment
autocmd FileType cpp,c,cxx,h,hpp,java map <C-c> :s/^/\/\//<Enter>
autocmd FileType cpp,c,cxx,h,hpp,java map <C-x> :s/^\/\///<Enter> 
autocmd FileType tex map <C-c> :s/^/%/<Enter>
autocmd FileType tex map <C-x> :s/^%//<Enter> 
"END comment/uncomment

"BEGIN astyle
map <C-a> :%!~/.vim/astyle-google --style=linux --indent=spaces=2<Enter>
"END astyle

"BEGIN path
let &path.="/usr/include/c++/5,/usr/include/x86_64-linux-gnu/c++/5,/usr/include/c++/5/backward,/usr/lib/gcc/x86_64-linux-gnu/5/include,/usr/local/include,/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed,/usr/include/x86_64-linux-gnu,/usr/include,"
"END path

call plug#begin('~/.vim/plugged')

Plug 'kien/ctrlp.vim'
Plug 'mkitt/tabline.vim'
"Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'Valloric/YouCompleteMe' "Install manually
Plug 'vim-syntastic/syntastic'
Plug 'vivkin/vim-call-cmake'
Plug 'lervag/vimtex'
Plug 'takac/vim-hardtime'

call plug#end()

"BEGIN vimtex
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_autojump = 0
let g:vimtex_quickfix_open_on_warning = 0
let g:bgrtex_quickfix_autojump = 1
if !exists('g:ycm_semantic_triggers')
	let g:ycm_semantic_triggers = {}
endif
let g:ycm_semantic_triggers.tex = g:vimtex#re#youcompleteme
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
"END vimtex

"BEGIN ctrlp
let g:ctrlp_custom_ignore = {
	\ 'dir': '\.git$\|build',
    \ 'file': '\v(\.cpp|\.cc|\.c|\.h|\.hh|\.cxx|\.tex|\.bib|\.txt)@<!$'
	\ }
"END ctrlp

"BEGIN YouCompleteMe
let g:ycm_filetype_whitelist = {
	\ 'c' : 1,
	\ 'py' : 1,
	\ 'cc' : 1,
	\ 'cpp' : 1,
	\ 'h'	: 1,
	\ 'tex' : 1,
	\ 'txt' : 1
	\}
let g:ycm_auto_trigger = 0
let g:ycm_autoclose_preview_window_after_completion = 1
"END YouCompleteMe

"BEGIN Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_tex_checkers = []
let g:syntastic_cpp_include_dirs = [ '../include', 'include' ]
let g:syntastic_c_include_dirs = [ '../include', 'include' ]
"END Syntastic

"BEGIN HardTime
let g:hardtime_default_on = 1
"END HardTime
