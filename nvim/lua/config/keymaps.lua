vim.keymap.set("i", "<S-Space>", "_")
vim.keymap.set({ "i", "v" }, ";;", "<Esc>")

-- backspace through whole words with <option> + <backspace>
vim.keymap.set("i", "<M-Backspace>", "<C-W>")

-- quick macro playback : https://www.youtube.com/watch?v=5x3dXo8aDCI
vim.keymap.set("n", "Q", "@qj")
vim.keymap.set("x", "Q", ":norm @q<CR>")
