-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    width = 60,
		side = "right",
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
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

vim.keymap.set("n", "<leader>t", vim.cmd.NvimTreeToggle);
vim.keymap.set("n", "<leader>r", vim.cmd.NvimTreeFindFile);
