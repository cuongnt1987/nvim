" Fast saving
nmap <leader>w :w!<cr>


" ============================================================================
" Visual mode related
" ============================================================================
" Visual mode pressing * or # searches for the current selection Super useful! From an idea by Michael Naumann
vnoremap <silent> * :call VisualSelection('f')<cr>
vnoremap <silent> # :call VisualSelection('b')<cr>


" ============================================================================
" Moving around, tabs, windows and buffers
" ============================================================================
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Smart way to move between windows
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-h> <c-w>h
map <c-l> <c-w>l

" Move between buffers
map gt :bp<cr>
map gy :bn<cr>
map gd :Bclose<cr>

" Close the current buffer
map <leader>bd :Bclose<cr>

" Close all the buffers
map <leader>ba :%bd<cr>

" Useful mappings for managin tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Opens a new tab with the current buffer's path
" Super useful when editing files in same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/


" ============================================================================
" Editing mappings
" ============================================================================
" Remap VIM 0 to first non-blank character
map 0 ^

" Re-align current buffer
nnoremap <leader>re gg=G

" Move a line of text using ALT-[jk] or Command+[jk] on mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
   nmap <D-j> <M-j>
   nmap <D-k> <M-k>
   vmap <D-j> <M-j>
   vmap <D-k> <M-k>
endif

" Delete trainling white space on save, useful for Python and Coffeescript
func! DeleteTrailingWS()
   exe "normal mz"
   %s/\s\+$//ge
   exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

nnoremap <leader>W :call DeleteTrailingWS()

" ============================================================================
" Helper functions
" ============================================================================
function! CmdLine(str)
   exe "menu Foo.Bar :" . a:str
   emenu Foo.Bar
   unmenu Foo
endfunction

function! VisualSelection(direction) range
   let l:saved_reg = @"
   execute "normal! vgvy"

   let l:pattern = escape(@", '\\/.*$^~[]')
   let l:pattern = substitute(l:pattern, "\n$", "", "")

   if a:direction == 'b'
      execute "normal ?" . l:pattern . "^M"
   elseif a:direction == 'gv'
      call CmdLine("vimgrep " . '/'. l:pattern . '/' . ' **/*.')
   elseif a:direction == 'replace'
      call CmdLine("%s" . '/'. l:pattern . '/')
   elseif a:direction == 'f'
      execute "normal /" . l:pattern . "^M"
   endif

   let @/ = l:pattern
   let @" = l:saved_reg
endfunction


" Returns true if paste mode is enabled
function! HasPaste()
   if &paste
      return 'PASTE MODE  '
   endif
   return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
   let l:currentBufNum = bufnr("%")
   let l:alternateBufNum = bufnr("#")

   if buflisted(l:alternateBufNum)
      buffer #
   else
      bnext
   endif

   if bufnr("%") == l:currentBufNum
      new
   endif

   if buflisted(l:currentBufNum)
      execute("bdelete! ".l:currentBufNum)
   endif
endfunction

" Background toggle
map <Leader>` :let &background = ( &background == "dark"? "light" : "dark" )<CR>

" Colorschema switching
nnoremap <leader>1 :colorscheme codeschool \| :AirlineTheme badwolf<cr>
nnoremap <leader>2 :colorscheme lucius \| :AirlineTheme lucius<cr>
nnoremap <leader>3 :colorscheme hybrid \| :AirlineTheme hybrid<cr>
nnoremap <leader>0 :colorscheme torte \| :AirlineTheme papercolor<cr>
