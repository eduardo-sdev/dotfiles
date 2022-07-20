call plug#begin('~/.config/nvim/autoload/plugged')

    " ---------- Better Syntax Support ----------
    Plug 'sheerun/vim-polyglot'
    let g:polyglot_is_disabled={}

    " ----------  Auto pairs for '(' '[' '{' ----------
    Plug 'jiangmiao/auto-pairs'

    " ----------  theme ----------
    Plug 'https://github.com/rafi/awesome-vim-colorschemes'
    Plug 'https://github.com/kjssad/quantum.vim'
    Plug 'tomasr/molokai'

    " ----------  Auto close
    Plug 'vim-scripts/HTML-AutoCloseTag'

    " ----------  CoC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    command! -nargs=0 Prettier :CocCommand prettier.formatFile

    " ---------- Adding color with colorizer 
    Plug 'norcalli/nvim-colorizer.lua'

    " ---------- developer web suggest tag
    Plug 'mattn/emmet-vim'
    let g:user_emmet_leader_key='<leader>z'

    " ---------- AutoSave
    Plug 'https://github.com/907th/vim-auto-save'
    let g:auto_save = 1
    let g:auto_save_silent = 1

    " ---------- superTab
    Plug 'https://github.com/ervandew/supertab'
    let g:SuperTabDefaultCompletionType = "<c-n>"

    " ---------- expore
    " ---------- Nerdtree expore
    Plug 'preservim/nerdtree'
    nmap <A-q> :NERDTreeToggle<CR>
    map <A-h> <C-w>h
    map <A-j> <C-w>j
    map <A-k> <C-w>k
    map <A-l> <C-w>l

    " ---------- Markdown
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

    " ---------- commentary
    Plug 'tpope/vim-commentary'
    nnoremap <space>/ :Commentary<CR>
    vnoremap <space>/ :Commentary<CR>

    " ---------- concole.log()
    Plug 'https://github.com/agarrharr/consolation-vim'
    nnoremap <leader>c :Consolate<cr>

    " ---------- ale linter
    Plug 'dense-analysis/ale'
        let g:ale_linters = {
        \   'cpp': [],
        \   'c': [],
        \}
        let g:ale_fixers = {
        \   '*': ['trim_whitespace'],
        \   'cpp': ['clang-format'],
        \   'c': ['clang-format'],
        \}
        let g:ale_fix_on_save = 1
        let g:ale_c_clangformat_options = '"-style={
        \ BasedOnStyle: google,
        \ IndentWidth: 4,
        \ ColumnLimit: 80,
        \ AllowShortFunctionsOnASingleLine: Inline,
        \ FixNamespaceComments: true,
        \ ReflowComments: false,
        \ }"'

        Plug 'wakatime/vim-wakatime'

        Plug 'https://github.com/github/copilot.vim'

        "view code js
        Plug 'https://github.com/metakirby5/codi.vim'

        Plug 'godlygeek/tabular'

        " line status
        Plug 'vim-airline/vim-airline'
        Plug 'vim-airline/vim-airline-themes'
        " enable tabline
        let g:airline#extensions#tabline#enabled = 1
        let g:airline#extensions#tabline#left_sep = ''
        let g:airline#extensions#tabline#left_alt_sep = ''
        let g:airline#extensions#tabline#right_sep = ''
        let g:airline#extensions#tabline#right_alt_sep = ''
        " let g:airline#extensions#tabline#buffer_min_count = 2
        " let g:airline#extensions#tabline#buffer_idx_mode = 1

        " enable powerline fonts
        let g:airline_powerline_fonts = 1
        let g:airline_left_sep = ''
        let g:airline_right_sep = ''
        " Switch to your current theme
        let g:airline_theme = 'molokai'
        " Always show tabs
        set showtabline=2

call plug#end()

