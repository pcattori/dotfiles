---@type any
---@diagnostic disable-next-line: undefined-global
local vim = vim

-- options -----------------------------------------------------------------------------------------

vim.opt.conceallevel = 0
vim.opt.listchars = {
  trail = "·",
  tab = "  ",
  nbsp = "␣",
  extends = "»",
  precedes = "«",
}

vim.opt.number = false
vim.opt.relativenumber = false
vim.opt.termguicolors = true
vim.opt.laststatus = 3

-- keymaps -----------------------------------------------------------------------------------------

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set({ "i", "v" }, ";;", "<Esc>")
vim.keymap.set("i", "<M-Space>", "_")

-- backspace through whole words with <option> + <backspace>
vim.keymap.set("i", "<M-Backspace>", "<C-W>")

-- quick macro playback : https://www.youtube.com/watch?v=5x3dXo8aDCI
vim.keymap.set("n", "Q", "@qj")
vim.keymap.set("x", "Q", ":norm @q<CR>")

-- Toggle absolute line numbers without changing relativenumber
vim.keymap.set("n", "<leader>ul", ":set number!<CR>", { noremap = true, silent = true })

-- theme -------------------------------------------------------------------------------------------

vim.pack.add({ "https://github.com/rose-pine/neovim" })
vim.cmd.colorscheme("rose-pine")

-- statusline --------------------------------------------------------------------------------------

vim.pack.add({ "https://github.com/nvim-lualine/lualine.nvim" })
require("lualine").setup({
  options = {
    theme = "rose-pine",
    icons_enabled = false,
    component_separators = "",
    section_separators = "",
  },
})
