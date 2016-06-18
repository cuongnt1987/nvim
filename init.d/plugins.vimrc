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
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline_theme = 'hybrid' 

" ===============================================
" Neomake
" ===============================================
" run neomake on the current file on every write
autocmd! BufWritePost * Neomake

" hinting javascipt with eslint, but exec with eslint_d
let g:neomake_javascript_enable_makers = ['eslint_d']
