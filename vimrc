"change runtimepath
:let &runtimepath.=',/usr/share/vim/vim73'
:let $VIMRUNTIME = "/usr/share/vim/vim73"

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

"white space stuff
set nowrap
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set list listchars=tab:\ \ ,trail:·

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

"NERDTree Stuff
let NERDTreeIgnore=['\.pyc$', '\.rbc$', '\~$']
nmap <silent> tt :NERDTreeToggle<CR>
autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/

" Status bar
set laststatus=2

colorscheme railscasts 
set number
set ignorecase
set title
set hlsearch
syntax on
:so /usr/share/vim/vim72/after/plugin/snipMate.vim 
let g:vimsyn_folding='af'

" Remember last location in file
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal g'\"" | endif
endif

"mappings
imap jj <ESC>
imap vc :sp ~/.vimrc<cr>
nmap ,rr :call ReloadSnippets(snippets_dir, &filetype)<CR>
nmap <silent> ff :FufFile<CR>
imap :FufFile ,f<cr>
nmap ,t :CommandT<cr>
set cindent
set smartindent
set autoindent
set expandtab
set shiftwidth=2
set backspace=2
" Command-T configuration
let g:CommandTMaxHeight=20
filetype plugin on

"these files are ruby
au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,config.ru}    set ft=ruby

set backupdir=~/.vim/backup
set directory=~/.vim/backup
" Show (partial) command in the status line
set showcmd
" Close all open buffers on entering a window if the only
" buffer that's left is the NERDTree buffer
function s:CloseIfOnlyNerdTreeLeft()
  if exists("t:NERDTreeBufName")
    if bufwinnr(t:NERDTreeBufName) != -1
      if winnr("$") == 1
        q
      endif
    endif
  endif
endfunction

 " Map Command-# to switch tabs
  map  <D-0> 0gt
  imap <D-0> <Esc>0gt
  map  <D-1> 1gt
  imap <D-1> <Esc>1gt
  map  <D-2> 2gt
  imap <D-2> <Esc>2gt
  map  <D-3> 3gt
  imap <D-3> <Esc>3gt
  map  <D-4> 4gt
  imap <D-4> <Esc>4gt
  map  <D-5> 5gt
  imap <D-5> <Esc>5gt
  map  <D-6> 6gt
  imap <D-6> <Esc>6gt
  map  <D-7> 7gt
  imap <D-7> <Esc>7gt
  map  <D-8> 8gt
  imap <D-8> <Esc>8gt
  map  <D-9> 9gt
  imap <D-9> <Esc>9gt

  " Command-Option-ArrowKey to switch viewports
  map <D-M-Up> <C-w>k
  imap <D-M-Up> <Esc> <C-w>k
  map <D-M-Down> <C-w>j
  imap <D-M-Down> <Esc> <C-w>j
  map <D-M-Right> <C-w>l
  imap <D-M-Right> <Esc> <C-w>l
  map <D-M-Left> <C-w>h
  imap <D-M-Left> <C-w>h
