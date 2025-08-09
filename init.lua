-- Project spec setup
vim.opt.textwidth = 80
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true


-- My stuff
vim.opt.termguicolors = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.scrolloff = 10
vim.opt.inccommand = 'split'

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.number = true
vim.opt.relativenumber = true

vim.cmd('filetype plugin on')
vim.cmd('syntax on')

