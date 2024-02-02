return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { "ocaml", "ocaml_interface" },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- use local lsp installed within project's opam switch
        ocamllsp = { mason = false },
      },
    },
  },
}
