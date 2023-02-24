vim.api.nvim_create_autocmd("BufWritePre", {
	group = vim.api.nvim_create_augroup("Prettier_group", {clear = true}),
	callback = function()
		vim.api.nvim_command(":Prettier")
	end,
});
