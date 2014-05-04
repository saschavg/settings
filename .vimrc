set pastetoggle=<F2>
set tabstop=4
set ts=4
set shiftwidth=4
set expandtab
set autowrite 
set ai
set nu
set nocompatible
set hlsearch
set showmatch
set tags=.ctags;/

syntax on
map ,t :CommandT<CR>
imap ,,, <esc>bdwi<<esc>pa><cr></<esc>pa><esc>k2>>

nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " Only show tags for current buffer
let Tlist_Enable_Fold_Column = 0  " no fold column (only showing one file)
let tlist_sql_settings = 'sql;P:package;t:table'
let tlist_ant_settings = 'ant;p:Project;r:Property;t:Target'

autocmd FileType make set noexpandtab

map <F9> : call JavaScriptLint()<CR>
func! JavaScriptLint()
    exec "w"
    exec "!jsl -conf ~/jsl.conf -process % "
endfunc
