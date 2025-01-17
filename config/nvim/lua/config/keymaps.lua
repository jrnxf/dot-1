local util = require("util")

-- util.cowboy()

-- Move to window using the movement keys
vim.keymap.set("n", "<left>", "<C-w>h")
vim.keymap.set("n", "<down>", "<C-w>j")
vim.keymap.set("n", "<up>", "<C-w>k")
vim.keymap.set("n", "<right>", "<C-w>l")

-- change word with <c-c>
vim.keymap.set("n", "<C-c>", "<cmd>normal! ciw<cr>a")

-- plenary testing
vim.keymap.set("n", "<leader>tt", function()
  util.test(true)
end, { desc = "Test File" })
vim.keymap.set("n", "<leader>tT", function()
  util.test()
end, { desc = "Test All Files" })

-- run lua
vim.keymap.set("n", "<leader>cR", util.runlua, { desc = "Run Lua" })
