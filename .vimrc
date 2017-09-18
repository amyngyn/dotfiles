" misc
colorscheme elflord  
set number
syntax on
set showmode
set mouse=a                         " allow mouse
set formatoptions=tcroql            " see fo-table for definitions
command Wq wq
command Tn tabnew
imap ` <Esc>
let g:loaded_logipat = 1            " disable logipat plugin due to collision with :E
                                    " https://stackoverflow.com/questions/31695455/vim-how-do-i-disable-the-default-logipat-plugin
set runtimepath^=~/.vim/bundle/vim-go

" width checker
set textwidth=120
set colorcolumn=+1                  " highlight 121st column
hi ColorColumn ctermbg=Yellow

" tabs
set expandtab                       " soft tabs in insert mode
set tabstop=4                       " tabs are four spaces in width
set shiftwidth=4                    " indent with width=4
set softtabstop=4                   " ?

" indentation
set smartindent
set shiftwidth=2

" statusline
set laststatus=2                    " always show window info
set statusline+=%m                  " modified
set statusline+=%r                  " readonly
set statusline+=%h                  " helpstatus 
set statusline+=%w                  " preview 
set statusline+=\ %l,%c             " line,col
set statusline+=\ (%p%%)            " percent
set statusline+=%=                  " left/right sep
set statusline+=%f                  " relative filepath

" menu
set wildmenu                        " shows list of files tabbing through

" search
set incsearch                       " search as you type
set hlsearch                        " highlight search terms
set ignorecase                      " case insensitive
set smartcase                       " case sensitive for uppercase

" backup/undo/swp
set updatecount=30                  " update swap every 30 chars
set updatetime=5000                 " update swap every 5 seconds

set directory=~/.vim/swp//

set backup
set backupdir=~/.vim/tmp//

set undofile
set undodir=~/.vim/undo//

" file viewer
let g:netrw_liststyle=3             " tree style viewing
let g:netrw_list_hide='\(^\|\s\s\)\zs\.\S\+' " hide dot files by default

" Vim jumps to the last position when opening a file
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif
