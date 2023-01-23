-- Set encoding
vim.opt.encoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'
vim.scriptencoding = 'utf-8'

-- Editor options
vim.opt.title = true

vim.opt.number = true
vim.opt.mouse = 'a'
vim.opt.cursorline = true
vim.opt.scrolloff = 5
vim.opt.wrap = true
vim.opt.breakindent = true
vim.opt.laststatus = 2
vim.opt.signcolumn = 'yes'

vim.opt.showcmd = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.smarttab = true
vim.opt.smartindent = true
vim.opt.backspace = { 'indent', 'eol', 'start' }

vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.completeopt = { 'menuone', 'noselect' }

vim.opt.termguicolors = true
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Use system clipboard for copy/paste
vim.opt.clipboard:append { 'unnamedplus' }
