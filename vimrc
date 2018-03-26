colorscheme onehalflight-benjamin

set exrc "allows local .vimrc in directory
set clipboard=unnamedplus "paste from/to clipboard

"BEGIN view
set number "line numbers
set number relativenumber
set scrolloff=3
set showcmd
set tabstop=4
set shiftwidth=4
set whichwrap+=>,l
set whichwrap+=<,h
"END view

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

"BEGIN path
let &path.="/usr/include/c++/5,/usr/include/x86_64-linux-gnu/c++/5,/usr/include/c++/5/backward,/usr/lib/gcc/x86_64-linux-gnu/5/include,/usr/local/include,/usr/lib/gcc/x86_64-linux-gnu/5/include-fixed,/usr/include/x86_64-linux-gnu,/usr/include,"
"END path

call plug#begin('~/.vim/plugged')


Plug 'kien/ctrlp.vim'
Plug 'lervag/vimtex'
Plug 'mkitt/tabline.vim'
Plug 'tpope/vim-fugitive'
Plug 'wikitopian/hardmode'
Plug 'Valloric/YouCompleteMe' "Install manually
Plug 'vivkin/vim-call-cmake'
Plug 'vim-syntastic/syntastic'

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
"END vimtex

"BEGIN hardmode
nnoremap <leader>h <Esc>:call ToggleHardMode()<CR>
"END hardmode

"BEGIN ctrlp
	"\ 'file': '\.aux$\|\.bbl$\|\.blg$\|\.log$\|\.out$\|\.synctex.gz$\|\.tdo$\|\.toc$\|\.nav$\|\.snm$\|\.fuse_hidden\|\.pdf$\|\.fls$\|\.dvi$' 
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
"let g:ycm_min_num_of_chars_for_completion = 10
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
"END Syntastic
