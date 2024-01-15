; https://phelipetls.github.io/posts/mdx-syntax-highlight-treesitter-nvim/
; extends
((inline) @_inline (#lua-match? @_inline "^%s*import")) @tsx
((inline) @_inline (#lua-match? @_inline "^%s*export")) @tsx
