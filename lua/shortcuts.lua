vim.keymap.set("i", "jk", "<Esc>", { noremap = true});

vim.keymap.set("n", "<leader>ps", vim.cmd.PackerSync);
vim.keymap.set("n", "<leader>so", vim.cmd.so);

vim.keymap.set("n", "gn", vim.cmd.bn);
vim.keymap.set("n", "gp", vim.cmd.bp);
vim.keymap.set("n", "gw", vim.cmd.Bclose);

vim.keymap.set("n", "<leader>m", vim.cmd.Mason);

vim.keymap.set("n", "<leader>e", vim.cmd.BufstopFast);
vim.keymap.set("n", "<leader>ee", vim.cmd.BufstopPreview);

vim.keymap.set("n", ",<space>", vim.cmd.nohlsearch);

vim.keymap.set("n", "<A-j>", ":m .+1<CR>==");
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==");
vim.keymap.set("i", "<A-j>", "<Esc>:m .+1<CR>==gi");
vim.keymap.set("i", "<A-k>", "<Esc>:m .-2<CR>==gi");
vim.keymap.set("v", "<A-j>", ":m '>+1<CR>gv==gv");
vim.keymap.set("v", "<A-k>", ":m '<-2<CR>gv==gv");

vim.keymap.set("n", "<C-k>", ":wincmd k<CR>");
vim.keymap.set("n", "<C-j>", ":wincmd j<CR>");
vim.keymap.set("n", "<C-h>", ":wincmd h<CR>");
vim.keymap.set("n", "<C-l>", ":wincmd l<CR>");

vim.keymap.set("n", "n", "nzzzv");
vim.keymap.set("n", "N", "Nzzzv");

vim.keymap.set("n", "<C-v>", vim.cmd.vsplit);
vim.keymap.set("n", "<C-s>", vim.cmd.split);


vim.keymap.set("n", "<leader>w", function()
	vim.api.nvim_command(":Prettier")
end);
