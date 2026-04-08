local opt = vim.opt

-- Core things {{{
opt.number = true
opt.relativenumber = true
opt.cursorline = true
opt.wrap = false
opt.scrolloff = 10
opt.sidescrolloff = 8
-- }}}

-- Indentation {{{
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = false
opt.smartindent = true
opt.autoindent = true
-- }}}

-- Search {{{
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
-- }}}

-- Visual {{{
opt.termguicolors = true
opt.signcolumn = "yes"
opt.showmatch = true -- Matching brackets
opt.matchtime = 2
opt.cmdheight = 1
opt.showmode = true
opt.pumheight = 10 -- Popup menu height
opt.pumblend = 10 -- Popup menu transparency
opt.winblend = 0 -- Floating window transparency
-- TODO: Read the docs about it
opt.completeopt = "menu,menuone,noselect"
-- }}}

-- Files {{{
opt.confirm = true
opt.backup = false 
opt.writebackup = false 
opt.swapfile = false 
opt.undofile = true 
opt.undolevels = 10000
opt.undodir = vim.fn.expand("~/.vim/undodir") -- Undo directory
opt.updatetime = 300 -- Faster completion
opt.timeoutlen = vim.g.vscode and 1000 or 300 -- Lower than default (1000) to quickly trigger which-key
opt.ttimeoutlen = 0 -- Key code timeout
opt.autoread = true -- Auto reload files changed outside vim
opt.autowrite = true -- Auto save
-- }}}

-- Behavior settings {{{
-- TODO: Read docs later
-- opt.hidden = true -- Allow hidden buffers
opt.errorbells = false -- No error bells
-- opt.backspace = "indent,eol,start" -- Better backspace behavior
-- opt.autochdir = false -- Don't auto change directory
-- opt.iskeyword:append("-") -- Treat dash as part of word
-- opt.path:append("**") -- include subdirectories in search
-- opt.selection = "exclusive" -- Selection behavior
opt.mouse = "a" -- Enable mouse support
-- opt.clipboard = vim.env.SSH_TTY and "" or "unnamedplus" -- Sync with system clipboard
-- opt.modifiable = true -- Allow buffer modifications
opt.encoding = "UTF-8" -- Set encoding
-- }}}

-- Performance {{{
opt.synmaxcol = 300 -- Syntax highlighting limit
opt.updatetime = 300 -- Faster completion
opt.redrawtime = 10000
opt.maxmempattern = 20000
-- }}}

-- Folding settings {{{
-- TODO: Read docs, again
-- opt.smoothscroll = true
vim.wo.foldmethod = "marker"
-- opt.foldlevel = 99 -- Start with all folds open
-- opt.formatoptions = "jcroqlnt" -- tcqj
-- opt.grepformat = "%f:%l:%c:%m"
-- opt.grepprg = "rg --vimgrep"
vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.bo.indentexpr = "v:lua.vim.treesitter.indentexpr()"
-- }}}

-- Split behavior {{{
opt.splitbelow = true -- Horizontal splits go below
opt.splitright = true -- Vertical splits go right
opt.splitkeep = "screen"
-- }}}

-- Command-line completion {{{
opt.wildmenu = true
opt.wildmode = "longest:full,full"
opt.wildignore:append({ "*.o", "*.obj", "*.pyc", "*.class", "*.jar" })
-- }}}

-- Better diff options
opt.diffopt:append("linematch:60")

-- Create undo directory if it doesn't exist
local undodir = vim.fn.expand("~/.vim/undodir")
if vim.fn.isdirectory(undodir) == 0 then
  vim.fn.mkdir(undodir, "p")
end

vim.g.autoformat = true
vim.g.trouble_lualine = true

-- TODO: Docs, yeah
-- opt.fillchars = {
--   foldopen = "",
--   foldclose = "",
--   fold = " ",
--   foldsep = " ",
--   diff = "╱",
--   eob = " ",
-- }

opt.jumpoptions = "view"
opt.laststatus = 3 -- global statusline
opt.list = false
opt.linebreak = true -- Wrap lines at convenient points
opt.list = true -- Show some invisible characters (tabs...
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
opt.shortmess:append({ W = true, I = true, c = true, C = true })
