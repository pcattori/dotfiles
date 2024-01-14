local cmp = require("cmp")

return {
  -- copilot
  { "github/copilot.vim" },
  {
    "L3MON4D3/LuaSnip",
    -- `<Tab>` keymap conflicts with copilot
    keys = function()
      return {}
    end,
  },

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

  -- completion
  {
    "hrsh7th/nvim-cmp",
    opts = {
      mapping = cmp.mapping.preset.insert({
        ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),
        ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
      }),
    },
  },

  -- rename
  {
    "smjonas/inc-rename.nvim",
    keys = { "<leader>cr" },
    config = function()
      require("inc_rename").setup()
    end,
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

  -- structural search and replace
  {
    "cshuaimin/ssr.nvim",
    config = function()
      require("ssr").setup()
      vim.keymap.set({ "n", "x" }, "<leader>cs", function()
        require("ssr").open()
      end)
    end,
  },
}
