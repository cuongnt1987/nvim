" Vim-Plug package configuration
" Plug options:
"  'branch/tag/commit': Branch, tag, commit of the repository use
"  'rtp': subdirectory that contains Vim plugin
"  'dir': custom directory for plugin
"  'as': use diffirent name for plugin
"  'on': on-demand loading: Commands for <Plug>-mapping
"  'for': on-demand loading: File type
"  'frozon': do not update unless explicitly specified
"
function! DoRemote(arg)
	UpdateRemotePlugins
endfunction

call plug#begin()
Plug 'junegunn/vim-easy-align'
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim', { 'do': function('DoRemote') }
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': ['javascript'] }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on': ['NERDTreeToggle', 'NERDTreeFind']}
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'airblade/vim-gitgutter'
" Plug 'SirVer/ultisnips'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'majutsushi/tagbar'
Plug 'Yggdroot/indentLine'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'digitaltoad/vim-pug', { 'for': 'pug' }
Plug 'moll/vim-node', { 'for': ['javascript'] }
"Plug 'ternjs/tern_for_vim', { 'do': 'npm install', 'for': ['javascript'] }
Plug 'pangloss/vim-javascript', { 'for': [ 'javascript' ] } | Plug 'briancollins/vim-jst', { 'for': [ 'ejs', 'jst' ] }
Plug 'hail2u/vim-css3-syntax', { 'for': ['css,less,scss'] }
Plug 'mattn/emmet-vim', { 'for': ['html'] }
Plug 'leafgarland/typescript-vim', { 'for': ['typescript'] }
Plug 'HerringtonDarkholme/yats.vim', { 'for': [ 'typescript' ] }
Plug 'othree/html5-syntax.vim', { 'for': [ 'html' ] }
Plug 'othree/html5.vim', { 'for': [ 'html' ] }
Plug 'benmills/vimux'
Plug 'edkolev/tmuxline.vim' "Tmux status line for vim-airline
Plug 'vim-scripts/BufOnly.vim'

" Color schemes :)
Plug 'jonathanfilip/vim-lucius'
Plug 'w0ng/vim-hybrid'
Plug 'dracula/vim'
Plug 'roosta/srcery'
call plug#end()
