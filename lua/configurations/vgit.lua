require('vgit').setup({
	settings = {
		live_blame = {
			enabled = false
		},
		live_gutter = {
			enabled = false
		},
		authorship_code_lens = {
			enabled = false
		}
	}
})

vim.keymap.set("n", "<leader>d", ":VGit project_diff_preview<CR>");
vim.keymap.set("n", "<leader>dd", ":VGit buffer_diff_preview<CR>");
