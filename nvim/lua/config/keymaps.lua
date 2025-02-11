-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- better escape
keymap.set("i", "jk", "<Esc>", { desc = "exit insert mode with jk", silent = true, noremap = true })
keymap.set("i", "kj", "<Esc>", { desc = "exit insert mode with kj", silent = true, noremap = true })

-- Move to window using the <ctrl> hjkl keys
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })

-- windows
keymap.set("n", "<leader>wh", "<C-W>s", { desc = "Split Window Below", remap = true })
keymap.set("n", "<leader>wv", "<C-W>v", { desc = "Split Window Right", remap = true })
keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split Window Below", remap = true })
keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split Window Right", remap = true })
keymap.set("n", "<leader>wm", function()
  LazyVim.toggle.maximize()
end, { desc = "Maximize Toggle" })

-- Resize window using <ctrl> arrow keys
keymap.set("n", "<C-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
keymap.set("n", "<C-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Resize window using <alt> arrow keys
keymap.set("n", "<A-Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
keymap.set("n", "<A-Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
keymap.set("n", "<A-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
keymap.set("n", "<A-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- files
keymap.set("n", "QQ", ":q!<enter>", { noremap = false })
keymap.set("n", "WW", ":w!<enter>", { noremap = false })
keymap.set("n", "E", "$", { noremap = false })
keymap.set("n", "B", "^", { noremap = false })

-- paste over currently selected text without yanking it
keymap.set("v", "p", '"_dP')
keymap.set("v", "P", '"_dp')

-- map ctrl + a to select all
keymap.set("n", "<C-a>", "ggVG", { desc = "select all", silent = true, noremap = true })

keymap.set(
  "n",
  "<BS>",
  "vi'",
  { desc = "map backspace to select all inside single quot", silent = true, noremap = true }
)

keymap.set("n", "<CR>", 'vi"', { desc = "map enter to select all inside double quot", silent = true, noremap = true })

keymap.set(
  "n",
  "x",
  '"_x',
  { desc = "delete a character without affecting the register", silent = true, noremap = true }
)
