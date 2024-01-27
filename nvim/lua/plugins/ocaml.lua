return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- use local lsp installed within project's opam switch
        ocamllsp = { mason = false },
      },
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "ocaml", "ocaml_interface" })
      end
    end,
  },
}
