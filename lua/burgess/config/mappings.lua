-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local function map(mode, lhs, rhs)
    vim.keymap.set(mode, lhs, rhs, { silent = true })
end

-- Clipboard
-- Copy to system clipboard
map("n", "<leader>y", "\"y")
map("n", "<leader>yy", "\"yy")
-- Cut to system clipboard
map("n", "<leader>v", "\v")
map("n", "<leader>vv", "\"vv")
-- Paste from system clipboard
map("n", "<leader>p", "\"p")

-- Split windows
map("n", "<leader>j", "<CMD>split<CR>")
map("n", "<leader>l", "<CMD>vsplit<CR>")

-- Resize Windows
map("n", "<C-Left>", "<C-w><")
map("n", "<C-Right>", "<C-w>>")
map("n", "<C-Up>", "<C-w>+")
map("n", "<C-Down>", "<C-w>-")
