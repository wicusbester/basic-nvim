vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Project spec setup
vim.opt.textwidth = 80
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.autoindent = true

-- My stuff
-- vim.opt.termguicolors = true
vim.opt.scrolloff = 10
vim.opt.inccommand = "split"

vim.opt.colorcolumn = "80"

vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"

vim.schedule(function()
	vim.opt.clipboard = "unnamedplus"
end)

vim.opt.undofile = true

vim.cmd("filetype plugin on")
vim.cmd("syntax on")

-- ---------- AUTOCMDS ----------
vim.api.nvim_create_autocmd({ "BufReadPost", "BufNewFile" }, {
	pattern = { "*.wistl" },
	command = "setfiletype wistl",
})
vim.api.nvim_create_autocmd({ "FileType" }, {
	pattern = { "wistl" },
	callback = function(ev)
		vim.bo.autoindent = true
		vim.bo.expandtab = true
		vim.bo.shiftwidth = 4
		vim.bo.softtabstop = 4
		vim.bo.tabstop = 4
		vim.bo.textwidth = 80
	end,
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { ".c", ".h" },
	callback = function(args)
		local fname = vim.fn.expand(args.file .. ":p:h") .. "/types.vim"
		if vim.fn.filereadable(fname) == 1 then
			vim.cmd("source " .. fname)
		end
	end,
})
vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { ".s", ".asm" },
	command = "set filetype=nasm",
})
