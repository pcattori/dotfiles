-- https://phelipetls.github.io/posts/mdx-syntax-highlight-treesitter-nvim/

vim.filetype.add({
  extension = {
    -- mdx = "mdx",
    mdx = "markdown.mdx",
    tsx = "tsx", -- syntax highlighting for tsx code blocks
  },
})

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "markdown" })
        vim.treesitter.language.register("markdown", "mdx")
      end
    end,
  },
}
