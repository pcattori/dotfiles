-- https://phelipetls.github.io/posts/mdx-syntax-highlight-treesitter-nvim/

vim.filetype.add({
  extension = {
    mdx = "mdx",
  },
})

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.list_extend(opts.ensure_installed, { "markdown" })
      vim.treesitter.language.register("markdown", "mdx")
    end,
  },
}
