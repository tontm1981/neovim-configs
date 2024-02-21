-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

map("n", "<C-S-Up>", "<cmd>resize +2<cr>", { desc = "Increase window height", remap = true })
map("n", "<C-S-Down>", "<cmd>resize -2<cr>", { desc = "Decrease window height", remap = true })
map("n", "<C-S-Left>", "<cmd>vertical resize -2<cr>", { desc = "Increase window width", remap = true })
map("n", "<C-S-Right>", "<cmd>vertical resize +2<cr>", { desc = "Decrease window width", remap = true })

map("n", "<C-Left>", "<C-w>h", { desc = "Go to left window", remap = true })
map("n", "<C-Down>", "<C-w>j", { desc = "Go to lower window", remap = true })
map("n", "<C-Up>", "<C-w>k", { desc = "Go to upper window", remap = true })
map("n", "<C-Right>", "<C-w>l", { desc = "Go to right window", remap = true })

map("n", "<C-z>", "<cmd> undo <cr>", { desc = "Undo", remap = true })
map("n", "<C-y>", "<cmd> redo <cr>", { desc = "Redo", remap = true })
map("i", "<C-z>", "<escape><cmd> undo <cr><insert>", { desc = "Undo", remap = true })
map("i", "<C-y>", "<escape><cmd> redo <cr><insert>", { desc = "Redo", remap = true })

map("n", "<C-s>", "<cmd>w<cr>", { desc = "Save current buffer", remap = true })
map("n", "<C-s>a", "<cmd>wa<cr>", { desc = "Save all buffers", remap = true })
map("n", "<C-s>f", "<cmd>w!<cr>", { desc = "Force save", remap = true })
map("n", "<C-s>af", "<cmd>wa!<cr>", { desc = "Force save all", remap = true })
map("n", "<C-s>q", "<cmd>wq<cr>", { desc = "Save current buffer and exit", remap = true })
map("n", "<C-s>qf", "<cmd>wq!<cr>", { desc = "Force save and exit", remap = true })
map("n", "<C-s>qaf", "<cmd>wqa!<cr>", { desc = "Force save all and exit", remap = true })

-- map("n", "<C-Left>", "<C-w>h", {desc = "Go to Left window", remap = true})
-- map("n", "<C-Left>", "<C-w>h", {desc = "Go to Left window", remap = true})
-- map("n", "<C-Left>", "<C-w>h", {desc = "Go to Left window", remap = true})
-- map("n", "<C-Left>", "<C-w>h", {desc = "Go to Left window", remap = true})
