local highlights = require("nord.plugins.bufferline").akinsho()

require("bufferline").setup({
    options = {
        separator_style = "thin",
    },
    highlights = highlights,
})

