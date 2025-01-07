return {
  -- file explorer
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "echasnovski/mini.files", enabled = false },
  {
    "stevearc/oil.nvim",
    lazy = false, -- ensure `oil` is ready when opening a directory
    opts = {
      default_file_explorer = true,
      skip_confirm_for_simple_edits = true,
      keymaps = {
        ["<S-h>"] = "actions.parent",
        ["<S-l>"] = "actions.select",
      },
    },
    keys = {
      {
        "<leader>e",
        function()
          require("oil").toggle_float()
        end,
        desc = "Toggle file explorer",
      },
    },
  },
}
