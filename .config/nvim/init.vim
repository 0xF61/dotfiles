syntax on
filetype plugin indent on
colorscheme spacegray

set autoindent smartindent so=10 ruler
set foldmethod=indent foldlevel=2 foldclose=all foldnestmax=7 nofoldenable
set autoread path+=** noautochdir regexpengine=1
set backspace=indent,eol,start lazyredraw
set bs=2 textwidth=0 cursorline nocursorcolumn
set encoding=utf-8 splitbelow splitright
set guicursor=n-v-c-sm:hor25,i-ci-ve:ver25,r-cr-o:ver20 guicursor=
set incsearch hlsearch ignorecase smartcase is colorcolumn=80
set nobackup nowritebackup noswapfile nocompatible noshowmode
set number relativenumber nowrap nolinebreak mouse+=a
set list listchars=tab:▸\ ,eol:¬,trail:· noshowmode noshowmatch
set tabstop=2 softtabstop=2 shiftwidth=2 noet laststatus=2
set termguicolors title nomodeline showcmd
set undofile undolevels=1000 undoreload=30000 undodir=/tmp/nvim
set scrolloff=6 sidescroll=1 sidescrolloff=10

au VimResized * exe "normal! \<c-w>="

map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <Leader>. :lcd %:p:h <CR>
map <Leader>c :w! \| !compiler <c-r>%<CR>
map <Leader>R :Goyo \| set linebreak<CR>
map <Leader>p :!opout <c-r>%<CR><CR>
map <Leader>Q :q!<CR>
map <Leader>d <Plug>(easymotion-prefix)
map <Leader>w :w!<CR>
map <Space> <Leader>

nmap <silent><leader>gr <Plug>(coc-references)
nmap <silent><Leader>b :Buffers<CR>
nmap <silent><Leader>f :FZF<CR>
nmap <Leader>g :tabnew\|read !grep -Hnri '<C-R><C-W>'<CR>
nmap <Leader>y "+yE
vmap <Leader>y "+yE
vnoremap < <gv
vnoremap > >gv

nnoremap <silent><S-l> :bnext<CR>
nnoremap <silent><S-h> :bprevious<CR>
noremap <Leader>/ :nohls<CR>
noremap <Leader>c :te clear;tail -fn+1 "%"<CR>
tnoremap <ESC> <C-\><C-n>

inoremap jk <ESC>
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-TAB>"
inoremap <silent><expr> <TAB> pumvisible() ? "\<C-y>" : "\<TAB>"
let g:coc_snippet_next = '<TAB>'
let g:coc_snippet_prev = '<S-TAB>'
inoremap <silent><expr> <c-space> coc#refresh()

nnoremap <BackSpace> :bn<CR>

if has("autocmd")
	au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
		\| exe "normal g'\"" | endif
endif

autocmd FileType vimwiki set syntax=markdown
autocmd BufWritePre * %s/\s\+$//e

let g:go_fmt_command = "goimports"
let g:startify_files_number = 5
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='minimalist'
let g:python3_host_prog = '/usr/bin/python3'
let g:ruby_host_prog = '/usr/bin/ruby'
let g:markdown_folding = 1

let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
"let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsExpandTrigger="<C-k>"

"au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme
au FileType go nmap <leader>r :w<CR><Plug>(go-run)

" EasyMotion: one Leader key instead of two
let g:EasyMotion_Leader_key = '<Leader>'

"let g:vimwiki_folding='list'
let g:vimwiki_valid_html_tags = 'script,code,img,div'
let g:vimwiki_list = [ {'path': '~/git/mywiki/content/',
                         \'index':'_index',
                         \'ext':'md',
                         \'syntax':'markdown'},
                     \{'path': '~/git/0xf61.gitlab.io/content/',
                         \'ext':'md',
                         \'index':'_index',
                         \'syntax':'markdown'} ]

call plug#begin()
    " Vim
    Plug 'vimwiki/vimwiki'

    " Code
    Plug 'metakirby5/codi.vim'
    Plug 'tpope/vim-fugitive'
    Plug 'scrooloose/nerdcommenter'
    Plug 'SirVer/ultisnips'
    Plug 'honza/vim-snippets'

    " Appearance
    Plug 'chrisbra/Colorizer'
    Plug 'mhinz/vim-startify'
    Plug 'vim-airline/vim-airline'

    " Motion
    Plug 'easymotion/vim-easymotion'
    Plug 'junegunn/goyo.vim'
    Plug 'tpope/vim-surround'
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }

    " Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
call plug#end()

if !empty(expand(glob("~/.config/nvim/autoload/coc-settings.vim")))
  source ~/.config/nvim/autoload/coc-settings.vim
endif

