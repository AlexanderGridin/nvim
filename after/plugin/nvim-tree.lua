-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local HEIGHT_RATIO = 0.8  -- You can change this
local WIDTH_RATIO = 0.8   -- You can change this too

require("nvim-tree").setup({
	sort_by = "case_sensitive",
	view = {
		float = {
			enable = true,
			open_win_config = function()
				local screen_w = vim.opt.columns:get()
				local screen_h = vim.opt.lines:get() - vim.opt.cmdheight:get()
				local window_w = screen_w * WIDTH_RATIO
				local window_h = screen_h * HEIGHT_RATIO
				local window_w_int = math.floor(window_w)
				local window_h_int = math.floor(window_h)
				local center_x = (screen_w - window_w) / 2
				local center_y = ((vim.opt.lines:get() - window_h) / 2)
				- vim.opt.cmdheight:get()
				return {
					border = 'rounded',
					relative = 'editor',
					row = center_y,
					col = center_x,
					width = window_w_int,
					height = window_h_int,
				}
			end,
		},
		width = function()
			return math.floor(vim.opt.columns:get() * WIDTH_RATIO)
		end,
		-- width = 60,
		-- side = "right",
		mappings = {
			list = {
				{ key = "u", action = "dir_up" },
				{ key = "U", action = "dir_down" },
			},
		},
	},
	renderer = {
		group_empty = false,
	},
	filters = {
		dotfiles = false,
	},
})

vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle);
vim.keymap.set("n", "<space>r", vim.cmd.NvimTreeFindFile);
