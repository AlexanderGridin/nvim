local highlights = require("nord").bufferline.highlights({
    italic = false,
    bold = true,
})

vim.opt.termguicolors = true

require("bufferline").setup({
    options = {
        separator_style = "thin",
    },

    highlights = highlights,
})

