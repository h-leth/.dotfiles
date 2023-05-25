autocmd FileType python map <buffer> <F3> :w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F3> <esc>:w<CR>:exec '!python3' shellescape(@%, 1)<CR>
autocmd FileType python noremap <buffer> <F8> :call Autopep8()<CR>

set tabstop = 2

let g:ale_linters = {'python': ['pylint']}
let g:ale_fixers = {'python': ['remove_trailing_lines', 'trim_whitespace', 'autopep8']}

let g:ale_completion_enabled = 0

let g:jedi#completions_enabled = 1
let g:jedi#auto_initialization = 1
let g:jedi#auto_vim_configuration = 1
let g:jedi#completions_command = "<M-Space>"

let g:autopep8_diff_type='vertical'
let g:autopep8_on_save=1
let g:autopep8_disable_show_diff=1
let g:autopep8_max_line_length=79

