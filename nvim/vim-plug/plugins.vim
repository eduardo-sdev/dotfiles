call plug#begin('~/.config/nvim/autoload/plugged')

    " ---------- Better Syntax Support ----------
    Plug 'sheerun/vim-polyglot'

    " ----------  Auto pairs for '(' '[' '{' ----------
    Plug 'jiangmiao/auto-pairs'

    " ----------  theme ----------
    Plug 'https://github.com/rafi/awesome-vim-colorschemes'
    Plug 'https://github.com/kjssad/quantum.vim'
    Plug 'https://github.com/morhetz/gruvbox'
    Plug 'https://github.com/fcpg/vim-farout'
    Plug 'tomasr/molokai'

    " ----------  Auto close
    Plug 'vim-scripts/HTML-AutoCloseTag'

    " ----------  CoC
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    command! -nargs=0 Prettier :CocCommand prettier.formatFile

    " ---------- Adding color with colorizer & rainbow
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

        Plug 'https://github.com/ashisha/image.vim'

        Plug 'https://github.com/github/copilot.vim'

        "view code js
        Plug 'https://github.com/metakirby5/codi.vim'

        Plug 'godlygeek/tabular'
        Plug 'preservim/vim-markdown'

call plug#end()

