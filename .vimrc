call pathogen#infect()
syntax enable
filetype plugin indent on
set et
set sw=2
set smarttab
set gfn=Monospace\ 8
set noantialias
" Always show status line
set laststatus=2
" My status line
"set statusline=\ %{strftime(\"%d-%m-%y\ -\ %H:%M\")}\ (%{&ff}){%Y}[%v]\ %t
" Syntastic highlight
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" no toolbar
set go-=T
" turn on line numbering
set number
" scrollbars is for pussies!
set guioptions-=r
set guioptions-=L
set guioptions-=m
" provide mouse functionality when using vim in terminal
set mouse=a
" highlight search terms
set hlsearch
hi Search guibg=Khaki guifg=Black gui=NONE

" start searching while typing the search word
set incsearch
" Do not create swap files, we're using git after all
set nobackup
set nowritebackup
set noswapfile
" Enable vim to remember undo chains between sessions (vim 7.3)
set undofile
" Configure snipmate dir
let g:snippets_dir="~/.vim/snippets"
" default gvim window dimensions
au GUIEnter * set columns=85 lines=42
" Visual line marking 80 characters (vim 7.3)
set colorcolumn=80
highlight ColorColumn ctermbg=5

" Text-mate style display of invisible characters (tab/newline)
set listchars=tab:▸\ ,
set list
hi NonText guifg=#4a4a59
hi SpecialKey guifg=#4a4a59 guibg=NONE

" use javascript syntax mode for json files (good enough)
autocmd BufNewFile,BufRead *.json set ft=javascript

" ------------------------------------------------------------------------------
" Key bindings
" ------------------------------------------------------------------------------
" Make , the leader key
let mapleader = ","

" Nerd Tree (toggle)
nnoremap <Leader>n :NERDTreeToggle<CR>
" Nerd Tree (reveal current file)
nnoremap <Leader>f :NERDTree<CR>:NERDTreeClose<cr>:NERDTreeFind<CR>

" Edit user .vimrc
nmap <Leader>v :e ~/.vimrc<CR>
" Edit project .vimrc
map <Leader>V :e .vimrc<CR>

" Clear search results when hitting space
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

" ------------------------------------------------------------------------------
" File type specifics *
" ------------------------------------------------------------------------------
" Execute current file with node.js
autocmd BufEnter *.js nmap <Leader><Leader> :w<CR>:!node %:p<CR>
" Execute current file with coffee-script node.js
autocmd BufEnter *.coffee nmap <Leader><Leader> :w<CR>:!coffee %:p<CR>

" pasta indented paste - I'd like to have it for coffee, too!
let g:pasta_disabled_filetypes = ['python', 'yaml']
let g:pasta_enabled_filetypes = ['ruby', 'javascript', 'css', 'sh', 'coffee' ]

" ctrlp fuzzy finder should not look here
set wildignore+=*/.git*,*/node_modules/*,*/logs/*,*/images/*,*~,*/docs/*,*ignore*,*.jpg,*.jpeg,*.jpg,*.png

" vim-indent-guides
"let g:indent_guides_auto_colors = 0
"autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
"autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
colorscheme desert
