vim.keymap.set("n", "<space>f", vim.cmd.Ex);

vim.keymap.set("i", "jk", "<Esc>", { noremap = true});

vim.keymap.set("n", "ps", vim.cmd.PackerSync);
vim.keymap.set("n", "so", vim.cmd.so);

vim.keymap.set("n", "gn", vim.cmd.bn);
vim.keymap.set("n", "gp", vim.cmd.bp);
vim.keymap.set("n", "gw", vim.cmd.bd);

vim.keymap.set("n", "<leader>g", vim.cmd.Neogit);
