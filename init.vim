" |  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
" | |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
" |_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|


" ===
" === Auto load for first time uses
" ===
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
    silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif


" ====================
" === Editor Setup ===
" ====================

" ===
" === System
" ===
set clipboard+=unnamedplus
let &t_ut=''
set autochdir


" ===
" === Editor behavior
" ===
set number
set relativenumber
set cursorline
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set scrolloff=5
set viewoptions=cursor,folds,slash,unix
set wrap
set tw=0
set indentexpr=
set foldmethod=indent
set foldenable
set smartindent
set formatoptions-=tc
set splitright
if has('mouse')
    set mouse=a
endif
set noshowmode
set showcmd
set wildmenu
exec "nohlsearch"
set ignorecase
set smartcase
set shortmess+=c
set inccommand=split
set ttyfast "should make scrolling faster
set lazyredraw "same as above
set visualbell
silent !mkdir -p ~/.local/share/nvim/backup
silent !mkdir -p ~/.local/share/nvim/undo
set backupdir=~/.local/share/nvim/backup,.
set directory=~/.local/share/nvim/backup,.
set undofile
set undodir=~/.local/share/nvim/undo
set colorcolumn=81
set showmatch
set hidden
set updatetime=300
set signcolumn=yes


" ===
" === Terminal Behavior
" ===
"let g:neoterm_autoscroll = 1
autocmd TermOpen term://* startinsert
au TermOpen * setlocal nonu
au TermOpen * setlocal nornu
au TermOpen * setlocal signcolumn=no


" ===
" === Basic Mappings
" ===
let mapleader=","
nnoremap <SPACE> :

map <LEADER><CR> :nohlsearch<CR>

"逗号后空格
inoremap , ,<Space>
"等号左右空格
inoremap = <Space>=<Space>

inoremap jj <ESC>

" move between windows
nmap <silent> <A-k> :wincmd k<CR>
nmap <silent> <A-j> :wincmd j<CR>
nmap <silent> <A-h> :wincmd h<CR>
nmap <silent> <A-l> :wincmd l<CR>

" Ctrl + k or j will move up/down the view port without moving the cursor
noremap <C-k> 5<C-y>
noremap <C-j> 5<C-e>

" Resize splits with arrow keys
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" select tab
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab


" ===
" === Install Plugins with Vim-Plug
" ===
call plug#begin('~/.local/share/nvim/plugged')

" Pretty Dress
"Plug 'qifei9/herald.vim'
"Plug 'rakr/vim-one'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'thaerkh/vim-indentguides' "显示缩进线
Plug 'mhinz/vim-startify'

" syntax highligh
Plug 'snakemake/snakemake', {'rtp': 'misc/vim'}

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'tenfyzhong/CompleteParameter.vim' " be loaded after ultisnips
Plug 'mattn/webapi-vim'
Plug 'mattn/vim-gist'

" File navigation
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Taglist
Plug 'liuchengxu/vista.vim'

" Auto Complete and lint
Plug 'w0rp/ale'
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'ncm2/ncm2-ultisnips'
Plug 'ncm2/ncm2-jedi'
Plug 'ncm2/ncm2-bufword'
Plug 'ncm2/ncm2-path'
Plug 'ncm2/ncm2-tmux'
Plug 'ncm2/ncm2-markdown-subscope'
Plug 'ncm2/float-preview.nvim'
Plug 'gaalcaras/ncm-R'

" Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive' " gv dependency
Plug 'junegunn/gv.vim' " gv (normal) to show git log
Plug 'rhysd/conflict-marker.vim'

" Python
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
Plug 'tweekmonster/braceless.vim'
Plug 'snakemake/snakefmt' " snakemake format

" R
Plug 'jalvesaq/Nvim-R'

" Markdown
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' " pandoc, syntax for rmarkdown
Plug 'dhruvasagar/vim-table-mode'
Plug 'dkarter/bullets.vim', { 'for' :['markdown', 'vim-plug'] }
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

" Undo Tree
Plug 'simnalamburt/vim-mundo'

" Bookmarks
Plug 'kshenoy/vim-signature'

" REPL
Plug 'jalvesaq/vimcmdline'

" Other enhancement
Plug 'scrooloose/nerdcommenter'
Plug 'aperezdc/vim-template'
Plug 'junegunn/vim-easy-align'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
" in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'gcmt/wildfire.vim'
Plug 'brooth/far.vim', { 'on': ['F', 'Far', 'Fardo'] }
Plug 'Konfekt/FastFold' "Speed up Vim by updating folds only when called-for
Plug 'tmhedberg/SimpylFold'
Plug 'AndrewRadev/switch.vim' " gs to switch
Plug 'AndrewRadev/splitjoin.vim'
Plug 'andymass/vim-matchup'
Plug 'rhysd/clever-f.vim'
Plug 'chrisbra/Colorizer'
"Plug 'metakirby5/codi.vim' " :Codi to do interactive scripting
"Plug 'wincent/ferret' " :Ack {something} or :Acks /{before}/{after}/
"Plug 'tpope/vim-eunuch' " do stuff like :SudoWrite
"Plug 'wsdjeg/FlyGrep.vim' " Ctrl+f (normal) to find file content
Plug 'tmux-plugins/vim-tmux-focus-events'
"Plug 'liuchengxu/vim-which-key'

" For general writing
"Plug 'reedes/vim-wordy'
"Plug 'ron89/thesaurus_query.vim'
"Plug 'reedes/vim-pencil'
"Plug 'rhysd/vim-grammarous' grammar checker
"Plug 'junegunn/goyo.vim' Distraction-free writing
"Plug 'junegunn/limelight.vim'

call plug#end()

" ===
" === Dress up my vim
" ===
set termguicolors     " enable true colors support
set guicursor=
let g:dracula_colorterm=0
colorscheme dracula
"colorscheme one
"set background=dark
hi Conceal ctermbg=NONE guibg=NONE


" ===================== Start of Plugin Settings =====================


" ===
" === gist-vim
" ===

let g:gist_post_private = 1
let g:gist_show_privates = 1


" ===
" === Colorizer
" ===

let g:colorizer_syntax = 1


" ===
" === Airline
" ===
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dracula'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#show_close_button = 0


" ===
" === Auto pairs
" ===
let g:AutoPairsFlyMode = 1
let g:AutoPairsMapCR   = 0 "1 will conflit with keymapping in NCM2


" ===
" === ALE
" ===
let g:ale_sign_error   = '•'
let g:ale_sign_warning = '•'
let g:ale_linters = {
\   'python': ['pyls'],
\   'r': [''],
\}
let g:ale_fixers = {
\   'python': ['yapf', 'isort'],
"\   'r': ['trim_whitespace', 'remove_trailing_lines'],
\   'r': ['styler'],
\}
let g:ale_r_lintr_options = 'lintr::with_defaults(
\   commented_code_linter = NULL,
\   single_quotes_linter  = NULL,
\   object_name_linter    = NULL
\)'
let g:ale_r_styler_options = 'styler::tidyverse_style, indent_by = 4'
let g:ale_sign_column_always = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
nmap <F8> <Plug>(ale_fix)
" Remap keys for gotos
nmap <silent> gd <Plug>(ale_go_to_definition)
nmap <silent> gy <Plug>(ale_go_to_type_definition)
nmap <silent> gr <Plug>(ale_find_references)
" Use K to show documentation
nmap <silent> K <Plug>(ale_hover)
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(ale_previous)
nmap <silent> ]g <Plug>(ale_next)


" ===
" === Indentguides
" ===
let g:indentguides_firstlevel = 1
let g:indentguides_ignorelist = [
\   'text',
\   'rmd',
\   'markdown',
\   'tex',
\   'rmarkdown',
\   'pandoc',
\   'nerdtree'
\]
let g:indentguides_spacechar = '¦'
let g:indentguides_tabchar = '¦'
let g:indentguides_conceal_color = 'ctermfg=238 ctermbg=NONE
\                                   guifg=#6272A4 guibg=NONE'


" ===
" === Nvim-R
" ===
if $DISPLAY != ""
    let R_openpdf = 1
endif
let r_syntax_folding = 0
let rrst_syn_hl_chunk = 1
let rmd_syn_hl_chunk = 1
let R_objbr_place = 'console,above'
"let R_objbr_h = 15
let R_hi_fun_paren = 1
let rout_follow_colorscheme = 1 "highligh outputt with current colorscheme
let Rout_more_colors = 1 " R commands in R output are highlighted
let R_rconsole_width = 95

let R_app = 'radian'
let R_cmd = 'R'
let R_hl_term = 0
let R_args = []  " if you had set any
let R_bracketed_paste = 1


" ===
" === Pandoc
" ===
let g:pandoc#folding#fdc = 0
let g:pandoc#folding#fold_div_classes = 1
let g:pandoc#folding#fold_yaml = 1
let g:pandoc#folding#fold_fenced_codeblocks = 1
let g:pandoc#keyboard#display_motions = 0
let g:pandoc#toc#close_after_navigating = 0
let g:pandoc#syntax#codeblocks#embeds#langs = [
\   "python",
\   "bash=sh",
\   "shell=sh",
\   "toml=conf",
\   "sh",
\   "conf",
\   "r",
\   "vim",
\   "help"
\]
" set F4 to open TOC
nmap <F4> :TOC<CR>


" ===
" === MarkdownPreview
" ===
nmap <silent> <F11> <Plug>MarkdownPreview
imap <silent> <F11> <Plug>MarkdownPreview
nmap <silent> <F12> <Plug>StopMarkdownPreview
imap <silent> <F12> <Plug>StopMarkdownPreview


" ===
" === Vim-easy-align
" ===
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" ===
" === NERDtree
" ===
map <Leader>n :NERDTreeToggle<CR>
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1
let g:NERDTreeLimitedSyntax = 1
autocmd FileType nerdtree setlocal nolist


" ===
" === vim-pencil
" ===
let g:pencil#textwidth = 80
let g:pencil#conceallevel = 2
let g:pencil#autoformat = 1
let g:pencil#cursorwrap = 0
let g:pencil_terminal_italics = 1


" ===
" === grammarous
" ===
let g:grammarous#languagetool_cmd = 'languagetool'
let g:grammarous#use_vim_spelllang = 1


" ===
" === SimpylFold
" ===
let g:SimpylFold_docstring_preview = 1


" ===
" === vim-template
" ===
let g:templates_directory = ['~/.local/share/nvim/templates']
let g:templates_search_height = 1
let g:email = 'qifei9@gmail.com'
let g:username = 'qifei9'


" ===
" === NCM2
" ===
 "use Tab to cycle in the popmenu, enter to complete or expand
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
imap <silent> <expr> <CR>
\   pumvisible() ?
\	    (!empty(v:completed_item) ?
\	    ncm2_ultisnips#expand_or("", 'n') :
\	    "\<c-y>\<CR>\<c-r>=AutoPairsReturn()\<cr>") :
\	"\<CR>\<c-r>=AutoPairsReturn()\<cr>"
" alt-q to expand, alt-w to move forward, alt-e to move backward
imap <expr> <A-q> ncm2_ultisnips#expand_or("\<Plug>(ultisnips_expand)", 'm')
smap <A-q> <Plug>(ultisnips_expand)
autocmd BufEnter * call ncm2#enable_for_buffer()
au User Ncm2PopupOpen set completeopt=noinsert,menuone,noselect
au User Ncm2PopupClose set completeopt=menuone
"set completeopt=noinsert,menuone,noselect
let g:ncm2#complete_length = 2
let g:float_preview#docked = 0


" ===
" === ultisnips
" ===
let g:snips_author = "qifei9"
let g:snips_email  = "qifei9@gmail.com"
let g:snips_github = "https://github.com/qifei9"
let g:UltiSnipsExpandTrigger		= "<Plug>(ultisnips_expand)"
let g:UltiSnipsJumpForwardTrigger	= "<A-w>"
let g:UltiSnipsJumpBackwardTrigger	= "<A-s>"
let g:UltiSnipsRemoveSelectModeMappings = 0


" ===
" === CompleteParameter
" ===
let g:complete_parameter_use_ultisnips_mapping = 1


" ===
" === FastFold
" ===
let g:fastfold_force = 1
let markdown_folding = 1
let tex_fold_enabled = 1
let vimsyn_folding = 'af'
let xml_syntax_folding = 1
"let javaScript_fold = 1
let sh_fold_enabled= 7
let ruby_fold = 1
let perl_fold = 1
let perl_fold_blocks = 1
let r_syntax_folding = 0
let rust_fold = 1
let php_folding = 1
let g:fastfold_savehook = 0
let g:fastfold_fold_command_suffixes = []


" ===
" === gitgutter
" ===
set updatetime=100


" ===
" === writing
" ===
nmap <F10> :Goyo<CR>
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!


" ===
" === mundo
" ===
nnoremap <F5> :MundoToggle<CR>
let g:mundo_right = 1 " Enable persistent undo


" ===
" === nerdcommenter
" ===
" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1
" Align line-wise comment delimiters flush left
" instead of following code indentation
let g:NERDDefaultAlign = 'left'
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1
" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1
" Enable NERDCommenterToggle to check all selected lines is commented or not
let g:NERDToggleCheckAllLines = 1


" ===
" === matchup
" ===
" matchup deferred highlighting
" Deferred highlighting improves cursor movement performance
" (for example, when using hjkl) by delaying highlighting for a short time
" and waiting to see if the cursor continues moving;
let g:matchup_matchparen_deferred = 1


" ===
" === vimcmdline
" ===
"let cmdline_follow_colorscheme = 1
" vimcmdline mappings
let cmdline_map_start          = '<LocalLeader>rf'
let cmdline_map_send           = '<LocalLeader>d'
let cmdline_map_send_and_stay  = '<LocalLeader>l'
let cmdline_map_source_fun     = '<LocalLeader>f'
let cmdline_map_send_paragraph = '<LocalLeader>pe'
let cmdline_map_send_block     = '<LocalLeader>b'
let cmdline_map_quit           = '<LocalLeader>rq'
" vimcmdline options
let cmdline_vsplit      = 1      " Split the window vertically
let cmdline_esc_term    = 1      " Remap <Esc> to :stopinsert in terminal
let cmdline_in_buffer   = 1      " Start the interpreter in a Neovim's terminal
"let cmdline_term_height = 15     " Initial height of interpreter window or pane
let cmdline_term_width  = 90     " Initial width of interpreter window or pane
let cmdline_tmp_dir     = '/tmp' " Temporary directory to save files
let cmdline_outhl       = 1      " Syntax highlight the output
let cmdline_auto_scroll = 1      " Keep the cursor at the end of terminal (nvim)
let cmdline_app           = {}
let cmdline_app['python'] = 'ipython --no-autoindent'
" set \rp to print a object
au FileType python nmap <buffer> <LocalLeader>rp
\   :call VimCmdLineSendCmd(expand('<cword>'))<CR>


" ===
" === Python-syntax
" ===
let g:python_highlight_all = 1
" let g:python_slow_sync = 0


" ==
" == thesaurus_query
" ==
map <LEADER>th :ThesaurusQueryLookupCurrentWord<CR>


" Startify
let g:startify_lists = [
\   { 'type': 'files',     'header': ['   MRU']            },
\   { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
\   { 'type': 'commands',  'header': ['   Commands']       },
\]


" ===
" === Far.vim
" ===
nnoremap <silent> <LEADER>f :F  %<left><left>


" ===
" === Bullets.vim
" ===
let g:bullets_set_mappings = 0


" ===
" === Vista.vim
" ===
map <silent> <Leader>v :Vista!!<CR>
map <silent> <C-t> :Vista finder<CR>
let g:vista#renderer#enable_icon=0


" ===
" === FlyGrep
" ===
nnoremap <c-f> :FlyGrep<CR>


" ===
" === GV
" ===
nnoremap gv :GV<CR>


" ===
" === semshi
" ===
let g:semshi#error_sign=0
hi semshiErrorChar guibg=NONE


" ===
" === vim-which-key
" ===
nnoremap <silent> <leader> :WhichKey ','<CR>

" ===================== End of Plugin Settings =====================
