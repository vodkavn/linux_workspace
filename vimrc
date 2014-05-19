augroup HighlightTrailingSpaces
autocmd!
autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END
syntax on
set t_Co=256
filetype on
filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set smarttab
set shiftround
set autoindent
set smartindent
set number
set ruler
set backspace=2
set fileencodings=ucs-bom,korea,utf-8,sjis,default
colorscheme koehler
" set cc=81
hi ColorColumn guibg=#2d2d2d ctermbg=246
filetype plugin indent on
" Pass arguments to phpcs binary
let g:phpqa_codesniffer_args = "--standard=Zend"
" Another example
let g:phpqa_codesniffer_args = "--standard=/path/to/xml/file.xml --tab-width=4"
" PHP codesniffer binary (default = phpcs)
let g:phpqa_codesniffer_cmd='/path/to/phpcs'
" Run codesniffer on save (default = 1)
let g:phpqa_codesniffer_autorun = 0
let g:phpqa_messdetector_ruleset = "/path/to/phpmd.xml"
" PHP mess detector binary (default = phpmd)
let g:phpqa_messdetector_cmd='/path/to/phpmd'
" Run mess detector on save (default = 1)
let g:phpqa_messdetector_autorun = 0

""""""""""""""""""""""""""""""""
"
" Load external config
"
function! s:source_rc(path)
  execute 'source' fnameescape(expand('~/.vim/rc/' . a:path))
endfunction

call s:source_rc('encoding.rc.vim')
call s:source_rc('edit.rc.vim')
call s:source_rc('search.rc.vim')
call s:source_rc('filetype.rc.vim')

""""""""""""""""""""""""""""""""
"
" Load plugin by pathogen
"
execute pathogen#infect()
filetype plugin indent on
autocmd vimenter * NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
map <C-n> :NERDTreeToggle<CR>
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
""""""""""""""""""""""""""""""""
