vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.smarttab = true
vim.opt.showmode = false
vim.opt.incsearch = true
vim.opt.cursorline = true

vim.opt.swapfile = false
vim.opt.backup = false

vim.opt.termguicolors = true
vim.opt.hidden = true

vim.opt.scrolloff = 8
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.updatetime = 50
vim.opt.colorcolumn = ""
vim.opt.winbl = 0

vim.opt.mouse = "a"
vim.opt.encoding = "utf8"
vim.opt.clipboard = "unnamedplus"

vim.opt.foldmethod = 'manual'

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0

vim.cmd("hi Normal guibg=NONE ctermbg=NONE")
vim.cmd("highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40")
