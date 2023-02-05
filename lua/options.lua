-- Set encoding
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.scriptencoding = 'utf-8'

-- Editor options
vim.opt.title = true
vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.scrolloff = 5
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.laststatus = 2
vim.opt.signcolumn = 'yes'
vim.opt.completeopt = { 'menuone', 'noselect' }
vim.opt.showcmd = true

-- Tab options
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.backspace = { 'indent', 'eol', 'start' }

-- Search options
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Color options
vim.opt.termguicolors = true

-- Split options
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Use system clipboard for copy/paste
vim.opt.clipboard:append { 'unnamedplus' }
