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
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<C-j>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Select }),
        ["<C-k>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Select }),

        ["<CR>"] = vim.NIL,
        ["<Tab>"] = cmp.mapping(function(fallback)
          if cmp.visible() then
            cmp.confirm({ select = true })
          else
            fallback()
          end
        end, { "i", "s" }),
      })
    end,
  },

  -- rename
  {
    "smjonas/inc-rename.nvim",
    keys = { "<leader>cr" },
    config = function()
      require("inc_rename").setup({})
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
}
