" settings
set ts=4 ai nu 
set splitbelow
set splitright
set tags=./tags,./TAGS,tags,TAGS

" key remap
nnoremap <C-a> <C-]>

" template
:autocmd BufNewFile  *.sh 0r ~/.vim/templates/template.sh
