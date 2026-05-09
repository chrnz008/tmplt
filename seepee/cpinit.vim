"template
"chads dont use buildsystem
set makeprg=g++\ -Wall\ %\ -o\ %<

if executable("clang-format")
	set formatprg=clang-format
	nnoremap Q gggqG
endif

nnoremap <F9> :w<CR>:!g++ -std=c++17 -Wshadow -Wall -o %:r % && .\%:r.exe<CR>

augroup CppTemplate
autocmd!
autocmd BufNewFile *.cpp 0r ~\Desktop\tmplt\seepee\.skeleton.cpp | normal! 16jf{
" autocmd BufNewFile *.cpp call append(0, "// Created: " . strftime("%Y-%m-%d %H:%M:%S"))
"creates a newline see :h 'eol'
" autocmd BufNewFile *.cpp 0r ~\Desktop\tmplt\cp\.skeleton.cpp | normal! j$!!date /t && time /tjI//$x+16jf{
" use the above one for date and time
augroup END

"snippets
inoreabbrev for, for (int i = 0;i < n; i++){}

"cavemens
"autopairs
inoremap (<CR> (<CR>)<Esc>O
inoremap [<CR> [<CR>]<Esc>O
inoremap {<CR> {<CR>}<Esc>O
