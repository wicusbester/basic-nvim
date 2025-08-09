vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Project spec setup
vim.opt.textwidth = 80
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true


-- My stuff
-- vim.opt.termguicolors = true
vim.opt.scrolloff = 10
vim.opt.inccommand = 'split'

vim.opt.colorcolumn = '80'

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = 'a'

vim.schedule(function()
  vim.opt.clipboard = 'unnamedplus'
end)

vim.opt.undofile = true



vim.cmd('filetype plugin on')
vim.cmd('syntax on')

