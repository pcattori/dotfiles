return {
  -- disable
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  { "NvChad/nvim-colorizer.lua", enabled = false },

  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "rose-pine" },
  },
  {
    "rose-pine/neovim",
    config = function()
      local h = require("rose-pine.util").highlight
      local p = require("rose-pine.palette")

      -- telescope
      h("TelescopePromptBorder", { fg = p.highlight_high, bg = p.base })
      h("TelescopePromptNormal", { fg = p.highlight_high, bg = p.base })
      h("TelescopePreviewBorder", { fg = p.highlight_high, bg = p.base })
      h("TelescopePreviewNormal", { fg = p.highlight_high, bg = p.base })
      h("TelescopeResultsBorder", { fg = p.highlight_high, bg = p.base })
      h("TelescopeResultsNormal", { fg = p.highlight_high, bg = p.base })

      -- flash
      h("FlashBackdrop", { fg = p.highlight_high })
      h("FlashMatch", { fg = p.pine })
      h("FlashLabel", { fg = p.foam })
      h("FlashCurrent", { fg = p.love })

      -- dashboard
      h("DashboardHeader", { fg = p.pine })
      h("DashboardFooter", { fg = p.gold }) -- not working for some reason
      h("DashboardIcon", { fg = p.foam })
      h("DashboardDesc", { fg = p.foam })
      h("DashboardKey", { fg = p.gold })

      -- mini.files
      h("MiniFilesNormal", { bg = p.base })
      h("MiniFilesBorder", { fg = p.highlight_high, bg = p.base })
      h("MiniFilesBorderModified", { fg = p.highlight_high, bg = p.base })
    end,
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        component_separators = "·",
        section_separators = "",
      },
    },
  },

  -- start screen
  {
    "nvimdev/dashboard-nvim",
    opts = function(_, dashboard)
      -- fixed in iterm 3.5, waiting for release: https://github.com/ryanoasis/nerd-fonts/issues/1149
      dashboard.config.center[1].icon = "󰍉 "
      return dashboard
    end,
  },

  -- file tree
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      default_component_configs = {
        git_status = {
          symbols = {
            added = "",
            modified = "",
            deleted = "",
            renamed = "",
            untracked = "??",
            staged = "",
            unstaged = "",
          },
        },
      },
      window = {
        fuzzy_finder_mappings = {
          ["<C-j>"] = "move_cursor_down",
          ["<C-k>"] = "move_cursor_up",
        },
      },
    },
  },
  {
    "echasnovski/mini.files",
    opts = {
      windows = {
        preview = false,
      },
    },
  },

  {
    "folke/noice.nvim",
    opts = {
      lsp = {
        hover = {
          silent = true,
        },
      },
    },
  },
}
