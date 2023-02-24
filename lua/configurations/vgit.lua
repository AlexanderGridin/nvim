require('vgit').setup()

vim.keymap.set("n", "<leader>d", ":VGit project_diff_preview<CR>");
vim.keymap.set("n", "<leader>dd", ":VGit buffer_diff_preview<CR>");
