" All system-wide defaults are set in $VIMRUNTIME/debian.vim (usually just
" /usr/share/vim/vimcurrent/debian.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vim/vimrc), since debian.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing debian.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.
"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden             " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)

" Source a global configuration file if available
"if filereadable("/etc/vim/vimrc.local")
"  source /etc/vim/vimrc.local
"endif

"set nocompatible
set number
"set cursorline
set shiftwidth=4
set tabstop=4
set expandtab
set smarttab
set hlsearch
set smartindent
set autoindent
"display as much as can even if the line is not ended
set display=lastline
"set wrap and make j, k can work
set wrap
map j gj
map k gk
"do not split work at the end of a line
set linebreak

"always display the status line
set laststatus=2

"file encoding.
set fileencodings=utf-8
"set fileencoding=utf-8,GB2312,GBK,GB18030
set termencoding=utf-8
set encoding=prc

set foldenable
set foldmethod=syntax
"set foldcolumn=1
setlocal foldlevel=99
"set foldclose=all
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc':'zO')<CR>

"smali plugin configure
filetype plugin on
filetype indent on
"auto read when file is changed from outside
set autoread
"Set 7 lines to the cursor - when moving vertically using j/k
set so=7
syntax enable
" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l
