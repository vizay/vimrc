call pathogen#infect()
set background=dark
syntax on

set nocompatible
filetype indent plugin on
set expandtab
set smarttab
set autoindent

autocmd FileType ruby,eruby,yaml,eyaml set ai sw=2 sts=2 et
autocmd FileType puppet set ai sw=2 sts=2 et
autocmd BufNewFile,BufRead *.eyaml set syntax=yaml

"some airline stuff
set laststatus=2
set t_Co=256

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list=1
let g:syntastic_check_on_open=1
let g:syntastic_enable_signs=1
let g:syntastic_quiet_messages = {'level': 'warnings'}
let g:syntastic_auto_loc_list=1
let g:loaded_syntastic_yaml_yamlxs_checker = 1

"To enable Just puppet-lint and disable the parser uncomment next line
"let g:syntastic_puppet_checkers=['puppetlint']
"
let g:vim_markdown_folding_disabled=1
