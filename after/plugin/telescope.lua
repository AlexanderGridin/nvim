local builtin = require('telescope.builtin')

local config = {
	layout_config = {
		width = 0.99,
		preview_width = 0.5,
	}
}

vim.keymap.set('n', '<leader>ff', function()
	builtin.find_files(config)
end , {})

vim.keymap.set('n', '<leader>fg', function()
	builtin.live_grep(config)
end, {})

vim.keymap.set('n', '<leader>fb', function()
	builtin.buffers(config)
end, {})

vim.keymap.set('n', '<leader>fh', function()
	builtin.help_tags(config)
end, {})

vim.keymap.set('n', '<leader>fr', function()
	builtin.lsp_references(config)
end, {})

vim.keymap.set('n', '<leader>gb', function()
	builtin.git_branches(config)
end, {})

vim.keymap.set('n', '<leader>gs', function()
	builtin.git_stash(config)
end, {})

vim.keymap.set('n', '<leader>ld', function()
	builtin.lsp_definitions(config)
end, {})

vim.keymap.set('n', '<leader>td', function()
	builtin.diagnostics(config)
end, {})
