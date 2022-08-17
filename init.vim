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
"set foldmethod=indent
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

"map <LEADER><CR> :nohlsearch<CR>

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
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'mhinz/vim-startify'
Plug 'kyazdani42/nvim-web-devicons'

" LSP
Plug 'neovim/nvim-lspconfig'
Plug 'tami5/lspsaga.nvim'
Plug 'folke/lsp-colors.nvim'
Plug 'folke/trouble.nvim'

" Auto Complete and lint
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/cmp-cmdline'
Plug 'ray-x/cmp-treesitter'
Plug 'hrsh7th/nvim-cmp'

" syntax highligh
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update
Plug 'snakemake/snakemake', {'rtp': 'misc/vim'}

" Snippets
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'quangnguyen30192/cmp-nvim-ultisnips'

" File navigation
Plug 'kyazdani42/nvim-tree.lua'

" Git
Plug 'lewis6991/gitsigns.nvim'
Plug 'rhysd/conflict-marker.vim'

" Python
Plug 'snakemake/snakefmt' " snakemake format

" R
Plug 'jalvesaq/Nvim-R'

" Markdown
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax' " pandoc, syntax for rmarkdown
Plug 'dhruvasagar/vim-table-mode'
Plug 'ellisonleao/glow.nvim'

" Undo Tree
Plug 'simnalamburt/vim-mundo'

" Bookmarks
Plug 'kshenoy/vim-signature'

" REPL
Plug 'jalvesaq/vimcmdline'

" telescope
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope-fzf-native.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Other enhancement
Plug 'kevinhwang91/nvim-hlslens'
Plug 'max397574/better-escape.nvim'
Plug 'nathom/filetype.nvim'
Plug 'karb94/neoscroll.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'scrooloose/nerdcommenter'
Plug 'aperezdc/vim-template'
Plug 'junegunn/vim-easy-align'
Plug 'windwp/nvim-autopairs'
Plug 'mg979/vim-visual-multi'
Plug 'tpope/vim-surround'
Plug 'gcmt/wildfire.vim' " in Visual mode, type i' to select all text in '', or type i) i] i} ip
Plug 'AndrewRadev/switch.vim' " gs to switch
Plug 'AndrewRadev/splitjoin.vim'
Plug 'andymass/vim-matchup'
Plug 'rhysd/clever-f.vim'
Plug 'chrisbra/Colorizer'

call plug#end()

" ===
" === Dress up my vim
" ===
set termguicolors     " enable true colors support
set guicursor=
let g:dracula_colorterm=0
colorscheme dracula
hi Conceal ctermbg=NONE guibg=NONE


" ===================== Start of Plugin Settings =====================


" nvim-hlslens {{{ "
lua << EOF
local kopts = {noremap = true, silent = true}

vim.api.nvim_set_keymap('n', 'n', [[<Cmd>execute('normal! ' . v:count1 . 'n')<CR><Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'N', [[<Cmd>execute('normal! ' . v:count1 . 'N')<CR><Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('n', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)

vim.api.nvim_set_keymap('x', '*', [[*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('x', '#', [[#<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('x', 'g*', [[g*<Cmd>lua require('hlslens').start()<CR>]], kopts)
vim.api.nvim_set_keymap('x', 'g#', [[g#<Cmd>lua require('hlslens').start()<CR>]], kopts)

vim.api.nvim_set_keymap('n', '<leader><CR>', ':noh<CR>', kopts)
EOF
" }}} nvim-hlslens "


" indent-blankline {{{ "
lua << EOF
require("indent_blankline").setup {
    -- for example, context is off by default, use this to turn it on
    show_current_context = true,
    show_current_context_start = true,
}
EOF
" }}} indent-blankline "


" nvim-tree {{{ "
lua << EOF
require'nvim-tree'.setup {
  disable_netrw        = false,
  hijack_netrw         = true,
  open_on_setup        = false,
  ignore_buffer_on_setup = false,
  ignore_ft_on_setup   = {},
  ---auto_close           = false,
  auto_reload_on_write = true,
  open_on_tab          = false,
  hijack_cursor        = false,
  update_cwd           = false,
  hijack_unnamed_buffer_when_opening = false,
  hijack_directories   = {
    enable = true,
    auto_open = true,
  },
  diagnostics = {
    enable = false,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  update_focused_file = {
    enable      = false,
    update_cwd  = false,
    ignore_list = {}
  },
  system_open = {
    cmd  = nil,
    args = {}
  },
  filters = {
    dotfiles = true,
    custom = {}
  },
  git = {
    enable = false,
    ignore = true,
    timeout = 500,
  },
  view = {
    width = 30,
    height = 30,
    hide_root_folder = false,
    side = 'left',
    preserve_window_proportions = false,
    mappings = {
      custom_only = false,
      list = {}
    },
    number = false,
    relativenumber = false,
    signcolumn = "yes"
  },
  trash = {
    cmd = "trash",
    require_confirm = true
  },
  actions = {
    change_dir = {
      enable = true,
      global = false,
    },
    open_file = {
      quit_on_open = false,
      resize_window = false,
      window_picker = {
        enable = true,
        chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890",
        exclude = {
          filetype = { "notify", "packer", "qf", "diff", "fugitive", "fugitiveblame", },
          buftype  = { "nofile", "terminal", "help", },
        }
      }
    }
  },
  log = {
    enable = false,
    types = {
      all = false,
      config = false,
      git = false,
    },
  },
}
EOF
let g:nvim_tree_icons = {
  \ 'default':        '',
  \ 'symlink':        '',
  \ 'git': {
  \   'unstaged':     "✗",
  \   'staged':       "✓",
  \   'unmerged':     "",
  \   'renamed':      "➜",
  \   'untracked':    "★",
  \   'deleted':      "",
  \  },
  \ 'folder': {
  \   'arrow_open':   "",
  \   'arrow_closed': "",
  \   'default':      "",
  \   'open':         "",
  \   'empty':        "",
  \   'empty_open':   "",
  \   'symlink':      "",
  \   'symlink_open': "",
  \  },
  \  'lsp': {
  \    'hint': "",
  \    'info': "",
  \    'warning': "",
  \    'error': "",
  \  }
  \ }
"let g:nvim_tree_indent_markers = 0 "0 by default, this option shows indent markers when folders are open
"let g:nvim_tree_highlight_opened_files = 1 "0 by default, will enable folder and file icon highlight for opened files/directories.
"let g:nvim_tree_add_trailing = 1 "0 by default, append a trailing slash to folder names
"let g:nvim_tree_special_files = { 'README.md': 1, 'Makefile': 1, 'MAKEFILE': 1 } " List of filenames that gets highlighted with NvimTreeSpecialFile
"let g:lua_tree_icons = {
"      \ 'default': '  ',
"      \}
"let g:nvim_tree_show_icons = {
"    \ 'git': 0,
"    \ }
nnoremap <leader>n :NvimTreeToggle<CR>
nnoremap <leader>r :NvimTreeRefresh<CR>
nnoremap <leader>s :NvimTreeFindFile<CR>
" }}} nvim-tree "


" better-escape {{{ "
lua << EOF
-- lua, default settings
require("better_escape").setup {
    mapping = {"jk", "jj"}, -- a table with mappings to use
    timeout = vim.o.timeoutlen, -- the time in which the keys must be hit in ms. Use option timeoutlen by default
    clear_empty_lines = false, -- clear line after escaping if there is only whitespace
    keys = "<Esc>", -- keys used for escaping, if it is a function will use the result everytime
    -- example
    -- keys = function()
    --   return vim.fn.col '.' - 2 >= 1 and '<esc>l' or '<esc>'
    -- end,
}
EOF
" }}} better-escape "


" vim-matchup {{{ "

lua << EOF
require'nvim-treesitter.configs'.setup {
  matchup = {
    enable = true,              -- mandatory, false will disable the whole extension
    -- disable = { "c", "ruby" },  -- optional, list of language that will be disabled
    -- [options]
  },
}
EOF

" matchup deferred highlighting
" Deferred highlighting improves cursor movement performance
" (for example, when using hjkl) by delaying highlighting for a short time
" and waiting to see if the cursor continues moving;
let g:matchup_matchparen_deferred = 1

" }}} vim-matchup "


" trouble.nvim {{{ "
lua << EOF
require("trouble").setup {
  -- your configuration comes here
  -- or leave it empty to use the default settings
  -- refer to the configuration section below
}
EOF
" }}} trouble.nvim "


" neoscroll {{{ "
lua require('neoscroll').setup()
" }}} neoscroll "


" lsp {{{ "
lua << EOF
local nvim_lsp = require('lspconfig')

-- Mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
local opts = { noremap=true, silent=true }
--vim.api.nvim_set_keymap('n', '<space>e', '<cmd>lua vim.diagnostic.open_float()<CR>', opts)
--vim.api.nvim_set_keymap('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
--vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
--vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)
  -- Enable completion triggered by <c-x><c-o>
  vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  -- See `:help vim.lsp.*` for documentation on any of the below functions
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  --vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  --vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  --vim.api.nvim_buf_set_keymap(bufnr, 'n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gR', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  vim.api.nvim_buf_set_keymap(bufnr, 'n', '<leader>bf', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

  --- In lsp attach function, lspsaga
  local map = vim.api.nvim_buf_set_keymap
  map(0, "n", "gr", "<cmd>Lspsaga rename<cr>", {silent = true, noremap = true})
  map(0, "n", "gx", "<cmd>Lspsaga code_action<cr>", {silent = true, noremap = true})
  map(0, "x", "gx", ":<c-u>Lspsaga range_code_action<cr>", {silent = true, noremap = true})
  map(0, "n", "K",  "<cmd>Lspsaga hover_doc<cr>", {silent = true, noremap = true})
  map(0, "n", "go", "<cmd>Lspsaga show_line_diagnostics<cr>", {silent = true, noremap = true})
  map(0, "n", "gj", "<cmd>Lspsaga diagnostic_jump_next<cr>", {silent = true, noremap = true})
  map(0, "n", "gk", "<cmd>Lspsaga diagnostic_jump_prev<cr>", {silent = true, noremap = true})
  map(0, "n", "<C-u>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(-1, '<c-u>')<cr>", {})
  map(0, "n", "<C-d>", "<cmd>lua require('lspsaga.action').smart_scroll_with_saga(1, '<c-d>')<cr>", {})
end


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').update_capabilities(capabilities)


-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { "bashls", "jedi_language_server", "r_language_server" }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      -- This will be the default in neovim 0.7+
      debounce_text_changes = 150,
    },
    capabilities = capabilities
  }
end


vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
  virtual_text = false,
  signs = true,
  underline = false,
  update_in_insert = true,
})

EOF
" }}} lsp "


" lspsaga {{{ "
lua << EOF
local lspsaga = require 'lspsaga'
lspsaga.setup { -- defaults ...
  debug = false,
  use_saga_diagnostic_sign = true,
  -- diagnostic sign
  error_sign = '•',
  warn_sign = '•',
  hint_sign = '•',
  infor_sign = '•',
  diagnostic_header_icon = "   ",
  -- code action title icon
  code_action_icon = " ",
  code_action_prompt = {
    enable = true,
    sign = true,
    sign_priority = 40,
    virtual_text = false,
  },
  finder_definition_icon = "  ",
  finder_reference_icon = "  ",
  max_preview_lines = 10,
  finder_action_keys = {
    open = "o",
    vsplit = "s",
    split = "i",
    quit = "q",
    scroll_down = "<C-f>",
    scroll_up = "<C-b>",
  },
  code_action_keys = {
    quit = "q",
    exec = "<CR>",
  },
  rename_action_keys = {
    quit = "<C-c>",
    exec = "<CR>",
  },
  definition_preview_icon = "  ",
  border_style = "single",
  rename_prompt_prefix = "➤",
  rename_output_qflist = {
    enable = false,
    auto_open_qflist = false,
  },
  server_filetype_map = {},
  diagnostic_prefix_format = "%d. ",
  diagnostic_message_format = "%m %c",
  highlight_prefix = false,
}
EOF
" }}} lspsaga "


" gitsings {{{ "
lua << EOF
--vim.cmd[[ highlight GitSignsDelete guifg=green guibg=NONE ctermbg=NONE]]
require('gitsigns').setup {
  signs = {
    add          = {hl = 'GitSignsAdd'   , text = '│', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'},
    change       = {hl = 'GitSignsChange', text = '│', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
    delete       = {hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    topdelete    = {hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn'},
    changedelete = {hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn'},
  },
}
EOF
" }}} gitsings "


" cmp {{{ "

set completeopt=menu,menuone,noselect

lua << EOF
local t = function(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

  -- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup {
    snippet = {
        expand = function(args) vim.fn["UltiSnips#Anon"](args.body) end
    },
    mapping = {
        ["<Tab>"] = cmp.mapping({
            c = function()
                if cmp.visible() then
                    cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
                else
                    cmp.complete()
                end
            end,
            i = function(fallback)
                if cmp.visible() then
                    cmp.select_next_item({ behavior = cmp.SelectBehavior.Insert })
                elseif vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
                    vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), 'm', true)
                else
                    fallback()
                end
            end,
            s = function(fallback)
                if vim.fn["UltiSnips#CanJumpForwards"]() == 1 then
                    vim.api.nvim_feedkeys(t("<Plug>(ultisnips_jump_forward)"), 'm', true)
                else
                    fallback()
                end
            end
        }),
        ["<S-Tab>"] = cmp.mapping({
            c = function()
                if cmp.visible() then
                    cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
                else
                    cmp.complete()
                end
            end,
            i = function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item({ behavior = cmp.SelectBehavior.Insert })
                elseif vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
                    return vim.api.nvim_feedkeys( t("<Plug>(ultisnips_jump_backward)"), 'm', true)
                else
                    fallback()
                end
            end,
            s = function(fallback)
                if vim.fn["UltiSnips#CanJumpBackwards"]() == 1 then
                    return vim.api.nvim_feedkeys( t("<Plug>(ultisnips_jump_backward)"), 'm', true)
                else
                    fallback()
                end
            end
        }),
        ['<Down>'] = cmp.mapping(cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }), {'i'}),
        ['<Up>'] = cmp.mapping(cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }), {'i'}),
        ['<C-n>'] = cmp.mapping({
            c = function()
                if cmp.visible() then
                    cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
                else
                    vim.api.nvim_feedkeys(t('<Down>'), 'n', true)
                end
            end,
            i = function(fallback)
                if cmp.visible() then
                    cmp.select_next_item({ behavior = cmp.SelectBehavior.Select })
                else
                    fallback()
                end
            end
        }),
        ['<C-p>'] = cmp.mapping({
            c = function()
                if cmp.visible() then
                    cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
                else
                    vim.api.nvim_feedkeys(t('<Up>'), 'n', true)
                end
            end,
            i = function(fallback)
                if cmp.visible() then
                    cmp.select_prev_item({ behavior = cmp.SelectBehavior.Select })
                else
                    fallback()
                end
            end
        }),
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), {'i', 'c'}),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), {'i', 'c'}),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), {'i', 'c'}),
        ['<C-e>'] = cmp.mapping({ i = cmp.mapping.close(), c = cmp.mapping.close() }),
        ['<CR>'] = cmp.mapping({
            i = cmp.mapping.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false }),
            c = function(fallback)
                if cmp.visible() then
                    cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
                else
                    fallback()
                end
            end
        }),
    },
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' }, -- For vsnip users.
        -- { name = 'luasnip' }, -- For luasnip users.
        { name = 'ultisnips' }, -- For ultisnips users.
        -- { name = 'snippy' }, -- For snippy users.
    }, {
        { name = 'buffer' },
        { name = 'path' },
        { name = 'treesitter' }
    })
}

-- Use buffer source for `/`.
cmp.setup.cmdline('/', {
    completion = { autocomplete = false },
    sources = {
        -- { name = 'buffer' }
        { name = 'buffer', opts = { keyword_pattern = [=[[^[:blank:]].*]=] } }
    }
})

-- Use cmdline & path source for ':'.
cmp.setup.cmdline(':', {
    completion = { autocomplete = false },
    sources = cmp.config.sources({
        { name = 'path' }
        }, {
        { name = 'cmdline' }
    })
})

EOF
" }}} cmp "


" treesitter {{{ "
lua << EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "all",
  highlight = {
    enable = true,
    custom_captures = {
      -- Highlight the @foo.bar capture group with the "Identifier" highlight group.
      -- ["foo.bar"] = "Identifier",
    },
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
      node_incremental = "grn",
      scope_incremental = "grc",
      node_decremental = "grm",
    },
  },
  indent = {
    enable = true
  },
  textobjects = { enable = true },
}
EOF

set foldmethod=expr
set foldexpr=nvim_treesitter#foldexpr()

" }}} treesitter "


" telescope {{{ "
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
" }}} telescope "


" nvim-autopairs {{{ "
lua << EOF
local Rule = require('nvim-autopairs.rule')
local npairs = require("nvim-autopairs")

npairs.setup({
    check_ts = true,
    ts_config = {
        --lua = {'string'},-- it will not add a pair on that treesitter node
        --javascript = {'template_string'},
        --java = false,-- don't check treesitter on java
    }
})

local ts_conds = require('nvim-autopairs.ts-conds')


-- press % => %% only while inside a comment or string
npairs.add_rules({
  Rule("%", "%", "lua")
    :with_pair(ts_conds.is_ts_node({'string','comment'})),
  Rule("$", "$", "lua")
    :with_pair(ts_conds.is_not_ts_node({'function'}))
})
EOF
" }}} nvim-autopairs "


" Colorizer {{{ "
let g:colorizer_syntax = 1
" }}} Colorizer "


" Airline {{{ "
let g:airline_powerline_fonts = 1
let g:airline_theme = 'dracula'
let g:airline#extensions#ale#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_nr_type = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#buffer_nr_show = 0
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#nvimlsp#enabled = 1
" }}} Airline "


" Nvim-R {{{ "
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

autocmd VimLeave * if exists("g:SendCmdToR") && string(g:SendCmdToR) != "function('SendCmdToR_fake')" | call RQuit("nosave") | endif
" }}} Nvim-R "


" vim-easy-align {{{ "
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
" }}} vim-easy-align "


" vim-template {{{ "
let g:templates_directory = ['~/.local/share/nvim/templates']
let g:templates_search_height = 1
let g:email = 'qifei9@gmail.com'
let g:username = 'qifei9'
" }}} vim-template "


" ultisnips {{{ "
let g:snips_author = "qifei9"
let g:snips_email  = "qifei9@gmail.com"
let g:snips_github = "https://github.com/qifei9"
let g:UltiSnipsExpandTrigger		= "<A-q>"
"let g:UltiSnipsJumpForwardTrigger	= "<A-w>"
"let g:UltiSnipsJumpBackwardTrigger	= "<A-e>"
"let g:UltiSnipsExpandTrigger		= '<Plug>(ultisnips_expand)'
let g:UltiSnipsJumpForwardTrigger	= '<Plug>(ultisnips_jump_forward)'
let g:UltiSnipsJumpBackwardTrigger	= '<Plug>(ultisnips_jump_backward)'
let g:UltiSnipsRemoveSelectModeMappings = 0
let g:UltiSnipsListSnippets = '<c-x><c-s>'
let g:UltiSnipsRemoveSelectModeMappings = 0
" }}} ultisnips "


" mundo {{{ "
nnoremap <F5> :MundoToggle<CR>
let g:mundo_right = 1 " Enable persistent undo
" }}} mundo "


" nerdcommenter {{{ "
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
" }}} nerdcommenter "


" vimcmdline {{{ "
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
"let cmdline_app           = {}
"let cmdline_app['python'] = 'ipython --no-autoindent'
" set \rp to print a object
au FileType python nmap <buffer> <LocalLeader>rp
\   :call VimCmdLineSendCmd(expand('<cword>'))<CR>
" }}} vimcmdline "


" Startify {{{ "
let g:startify_lists = [
\   { 'type': 'files',     'header': ['   MRU']            },
\   { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
\   { 'type': 'commands',  'header': ['   Commands']       },
\]
" }}} Startify "


" glow {{{ "
noremap <leader>p :Glow<CR>
" }}} glow "


" ===================== End of Plugin Settings =====================

" vim:fdm=marker
