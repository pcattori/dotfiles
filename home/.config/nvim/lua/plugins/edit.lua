return {
  -- autodetect spacing
  { "tpope/vim-sleuth", event = "BufEnter" },

  -- motion
  {
    "folke/flash.nvim",
    opts = {
      modes = {
        search = {
          enabled = false,
        },
      },
    },
  },

  {
    "Saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "super-tab",
      },
    },
  },

  -- multi-cursor
  {
    event = "BufEnter",
    "mg979/vim-visual-multi",
  },

  -- toggle collapse/expand collections
  {
    "Wansmer/treesj",
    keys = {
      {
        "<leader>ct",
        function()
          vim.cmd("TSJToggle")
        end,
        desc = "Toggle multi-line",
      },
    },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = {
      use_default_keymaps = false,
    },
  },
}
