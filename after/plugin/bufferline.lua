local highlights = require("nord").bufferline.highlights({
    italic = false,
    bold = false,
})

require("bufferline").setup({
    options = {
        separator_style = "thin",
    },
    highlights = highlights,
})

