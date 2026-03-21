"template
"chads dont use buildsystem
set makeprg=g++\ -Wall\ %\ -o\ %<

augroup CppTemplate
autocmd!
autocmd BufNewFile *.cpp 0r C:/Users/chr_58/Desktop/tmplt/cp/template.cpp | normal! 16jf{
augroup END

nnoremap <F9> :w<CR>:!g++ -std=c++17 -Wshadow -Wall -o %:r % && .\%:r.exe<CR>
