return {
  -- disable
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  { "NvChad/nvim-colorizer.lua", enabled = false },

  {
    "rose-pine/neovim",
    name = "rose-pine",
    opts = {
      extend_background_behind_borders = true, -- not sure if this is doing anything
      highlight_groups = {
        NormalFloat = { bg = "NONE" },
        FloatBorder = { fg = "highlight_high", bg = "NONE" },

        DashboardHeader = { fg = "pine" },
        DashboardIcon = { fg = "foam" },
        DashboardDesc = { fg = "foam" },
        DashboardKey = { fg = "gold" },
        DashboardFooter = { fg = "iris" },

        FlashBackdrop = { fg = "highlight_high" },
        FlashMatch = { fg = "pine" },
        FlashLabel = { fg = "gold", bg = "NONE" },
        FlashCurrent = { fg = "love" },

        TelescopeResultsNormal = { fg = "highlight_high", bg = "NONE" }, -- higher contrast against matching text
        TelescopePromptBorder = { fg = "highlight_high", bg = "NONE" },
        TelescopePreviewBorder = { fg = "highlight_high", bg = "NONE" },
        TelescopeResultsBorder = { fg = "highlight_high", bg = "NONE" },

        NotifyERRORBorder = { bg = "NONE" },
        NotifyWARNBorder = { bg = "NONE" },
        NotifyINFOBorder = { bg = "NONE" },
        NotifyDEBUGBorder = { bg = "NONE" },
        NotifyTRACEBorder = { bg = "NONE" },
      },
    },
  },
  {
    "LazyVim/LazyVim",
    opts = { colorscheme = "rose-pine" },
  },

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        component_separators = "",
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
      -- search git files if in git repo: https://github.com/LazyVim/LazyVim/pull/2240
      dashboard.config.center[1].action = require("lazyvim.util").telescope("files")
      return dashboard
    end,
  },

  {
    "hrsh7th/nvim-cmp",
    opts = {
      window = {
        completion = require("cmp").config.window.bordered(),
        documentation = require("cmp").config.window.bordered(),
      },
    },
  },
  {
    "folke/noice.nvim",
    opts = {
      cmdline = {
        format = {
          -- fixed in iterm 3.5, waiting for release: https://github.com/ryanoasis/nerd-fonts/issues/1149
          search_down = { icon = "󰍉" },
          search_up = { icon = "󰍉" },
        },
      },
      presets = {
        lsp_doc_border = true,
      },
      lsp = {
        hover = {
          silent = true,
        },
      },
    },
  },
}
