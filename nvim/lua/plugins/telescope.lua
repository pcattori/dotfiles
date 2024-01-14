local actions = require("telescope.actions")

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
  keys = {
    {
      "<leader>fh",
      function()
        require("telescope.builtin").find_files({ hidden = true })
      end,
      desc = "Find Hidden Files",
    },
    {
      "<leader>fi",
      function()
        require("telescope.builtin").find_files({ no_ignore = true })
      end,
      desc = "Find Ignored Files",
    },
    {
      "<leader>fk",
      function()
        require("telescope.builtin").keymaps()
      end,
      desc = "Find Keymaps",
    },
  },
  opts = {
    defaults = {
      mappings = {
        i = {
          ["<C-k>"] = actions.move_selection_previous,
          ["<C-j>"] = actions.move_selection_next,
        },
      },
    },
  },
}
