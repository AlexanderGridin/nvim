local neogit = require('neogit')
neogit.setup {}

vim.keymap.set("n", "<space>g", function() 
	neogit.open({ kind = "vsplit" })
end);
