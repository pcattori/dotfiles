vim.keymap.set("i", "<S-Space>", "_")
vim.keymap.set({ "i", "v" }, ";;", "<Esc>")

-- backspace through whole words with <option> + <backspace>
vim.keymap.set("i", "<M-Backspace>", "<C-W>")
