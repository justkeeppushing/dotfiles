if has('python3')
  silent! python3 1
endif

syntax on
" set ignorecase
" set smartcase
set backspace=indent,eol,start
set hlsearch
set bg=dark
set number
" -----

" Pathogen https://github.com/tpope/vim-pathogen
execute pathogen#infect()

" Load all plugins now.
" Plugins need to be added to runtimepath before helptags can be generated.
packloadall
silent! helptags ALL

" ALE https://github.com/dense-analysis/ale
" Per-language linters are configured in ~/.vim/ftplugin
" Only lint on save
let g:ale_lint_on_save =1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
let g:ale_lint_on_enter = 0
" 
let g:ale_completion_enabled = 1
let g:ale_sign_column_always = 0
let g:airline#extensions#ale#enabled = 1
let g:ale_sign_error = '❌'
let g:ale_sign_warning = '⚠️'

" Only run linters named in ale_linters settings.
let g:ale_linters_explicit = 1

" go between errors
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)

" lightline https://github.com/itchyny/lightline.vim
set laststatus=2
set noshowmode

" ----- 
set tabstop=2 shiftwidth=2
set expandtab
