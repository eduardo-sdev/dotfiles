nnoremap <SPACE> <Nop>
let mapleader=" "

nnoremap <C-w><C-e> :Ex<CR>
nnoremap <A-[> :Prettier<CR>

nnoremap <leader>w ciw
nnoremap <leader>D dd
nnoremap <leader>d diw

map <C-q> :bnext<CR>
map tr :bprevious<CR>
map te :tabe %<CR>
map <C-w><C-d> :bd<CR>

nnoremap <leader>g :Codi<CR>

nmap <A-o> o<Esc>k
nmap <A-O> O<Esc>j

nnoremap <leader>w ciw

nnoremap <leader>v :Consolate<CR>

nnoremap <leader>c :! g++ % -o main && ./main<CR>
nnoremap <leader>n :! node %<CR>

" -------------------- move line
nnoremap <A-C-j> :m .+1<CR>==
nnoremap <A-C-k> :m .-2<CR>==

