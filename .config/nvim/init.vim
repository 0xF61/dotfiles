" Some shitty neovim config
colorscheme minimalist

" Show Line numbers
set number

" Integrate with $DISPLAY
set clipboard+=unnamedplus mouse+=a

" Set a visual finisline to stop writing
set colorcolumn=80

" https://www.reddit.com/r/javascript/comments/c8drjo/nobody_talks_about_the_real_reason_to_use_tabs/
set tabstop=2 softtabstop=2 shiftwidth=2 " noexpandtab

" Enable smart stuff
set smartindent ignorecase smartcase

" Don't overwrite my settings
set nomodeline

" center the cursor always on the screen
set scrolloff=99 sidescrolloff=0

" Dont break line
set nowrap linebreak

" Highlight the cursor
map <silent> <leader><cr> :noh<cr>

" Backups are good but keep them until next shutdown
if !isdirectory($XDG_RUNTIME_DIR."/nvim")
	call mkdir($XDG_RUNTIME_DIR."/nvim", "", 0700)
	set undofile undodir=$XDG_RUNTIME_DIR/nvim
endif

" easier to see characters when `set paste` is on
set list listchars=tab:→\ ,eol:↲,nbsp:␣,trail:·,extends:⟩,precedes:⟨

" Update Leader for \ key combos
map <Space> <Leader>

" Change working directory
map <Leader>. :lcd %:p:h <CR>

" Keep selected in Visual mode
vnoremap < <gv
vnoremap > >gv

" pane switching vi style (duh)
map <C-h> <C-W>h
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-l> <C-W>l

" allow sensing the filetype
filetype plugin on

" avoid most of the 'Hit Enter ...' messages
set shortmess=aoOtI

" Install vim-plug if not already installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
	\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" only load plugins if Plug detected
if filereadable(expand("~/.config/nvim/autoload/plug.vim"))
	call plug#begin('~/.config/nvim/plugins')
		Plug 'airblade/vim-gitgutter', { 'branch':'main' }
		Plug 'fatih/vim-go', {'do':':GoUpdateBinaries'}
		Plug 'itchyny/lightline.vim'
		Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
		Plug 'junegunn/fzf.vim'
		Plug 'kristijanhusak/vim-dadbod-ui'
		Plug 'neoclide/coc.nvim', {'branch':'release'}
		Plug 'preservim/nerdcommenter'
		Plug 'preservim/nerdtree'
		Plug 'tpope/vim-dadbod'
		Plug 'tpope/vim-fugitive', {'branch':'master'}
		Plug 'tpope/vim-surround'
		Plug 'vimwiki/vimwiki'
	call plug#end()

	let g:coc_global_extensions = [
		\ 'coc-go',
		\ 'coc-highlight',
		\ 'coc-json',
		\ 'coc-marketplace',
		\ 'coc-pairs',
		\ 'coc-prettier',
		\ 'coc-pyright',
		\ 'coc-snippets',
		\ ]

	let g:lightline = {
		\ 'colorscheme': 'deus',
		\ }

	let g:vimwiki_valid_html_tags = 'script,code,img,div'
	let g:vimwiki_list = [ {'path': '~/git/mywiki/content/',
		\'index':'_index',
		\'ext':'md',
		\'syntax':'markdown'},
		\{'path':'~/git/0xf61.gitlab.io/content/',
		\'ext':'md',
		\'index':'_index',
		\'syntax':'markdown'}]
	autocmd FileType vimwiki set syntax=markdown

	if !empty(expand(glob("~/.config/nvim/autoload/coc-settings.vim")))
		source ~/.config/nvim/autoload/coc-settings.vim
	endif

	nnoremap <silent> <C-p> :Files<CR>
	nnoremap <silent> <C-o> :Lines<CR>
endif

" Trailing Spaces are toxic/waste
augroup prewrites
	autocmd!
		autocmd BufWritePre,FileWritePre * :%s/\s\+$//e | %s/\r$//e
augroup END

" start at last place you were editing
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" Recover cursort style
autocmd VimLeave * set guicursor=a:ver100-blinkon0
