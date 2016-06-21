" ===============================================
" deoplete - 'dark powerd neo-completion'
" ===============================================
" Automaticallly start deoplete when Neovim start
let g:deoplete#enable_at_startup = 1

" ===============================================
" dooplete-ternjs
" ===============================================
let g:tern_request_timeout = 1

" This do disable full signature type on autocomplete
let g:tern_show_signature_in_pum = 0  

" Use tern_for_vim - use same tern command with 
" deoplete-ternjs
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]

" ===============================================
" tern-for-vim
" ===============================================
" enable default key mappings
let g:tern_map_keys = 1

" set <leader> for prefix keys
let g:tern_map_prefix = '<leader>'

" ===============================================
" FZF 
" ===============================================
" config <c-p> as default FZF for working dir
nnoremap <c-p> :FZF<cr>

" fzf window height
let g:fzf_height=8

" ===============================================
" Tagbar 
" ===============================================
nnoremap <F2> :TagbarToggle<cr>

" ===============================================
" NERDTree
" ===============================================
" Toggle NERDTree when <F3> is pressed
nnoremap <leader>d :NERDTreeToggle<cr>

" Find current buffer in NERDTree when <F4>
nnoremap <leader>f :NERDTreeFind<cr>

" ===============================================
" vim-airline
" ===============================================
let g:airline_powerline_fonts = 1 
let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = 'hybrid' 

" ===============================================
" Neomake
" ===============================================
" run neomake on the current file on every write
autocmd! BufWritePost * Neomake

" hinting javascipt with eslint, but exec with eslint_d
let g:neomake_javascript_enabled_makers = ['eslint_d']

" neomake list height to 3
let g:neomake_list_height = 3

" open loclist or quickfix list when adding entries
let g:neomake_open_list = 2

" neomake error signs
let g:neomake_error_sign = {'text': '✖', 'texthl': 'NeomakeErrorSignDefault'}
let g:neomake_warning_sign = {'text': '⚠', 'texthl': 'NeomakeWarningSignDefault'}
let g:neomake_message_sign = {'text': '➤', 'texthl': 'NeomakeMessageSignDefault'}
let g:neomake_info_sign = {'text': 'ℹ', 'texthl': 'NeomakeInfoSignDefault'}
