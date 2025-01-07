vim.keymap.set({ "i", "v" }, ";;", "<Esc>")
vim.keymap.set("i", "<S-Space>", "_")

-- backspace through whole words with <option> + <backspace>
vim.keymap.set("i", "<M-Backspace>", "<C-W>")

-- quick macro playback : https://www.youtube.com/watch?v=5x3dXo8aDCI
vim.keymap.set("n", "Q", "@qj")
vim.keymap.set("x", "Q", ":norm @q<CR>")

-- fix number toggling from LazyVim so that it doesn't forcibly enable relativenumber
vim.keymap.set("n", "<leader>ul", ":set number!<CR>", { noremap = true, silent = true })
