local highlights = require("nord.plugins.bufferline").akinsho()

require("bufferline").setup({
	options = {
		separator_style = "slant",
		indicator = {
			icon = ' ',
			style = 'icon',
		},
		modified_icon = '●',
		buffer_close_icon = '󰅙',
		close_icon = '',
		left_trunc_marker = '',
		right_trunc_marker = '',
		diagnostics = "nvim_lsp",
	},
	highlights = highlights,
})

