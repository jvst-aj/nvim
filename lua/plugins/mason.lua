return {
  "mason-org/mason.nvim",
  opts = {
    ensure_installed = {
      -- LSPs
      "shfmt",
      "lua-language-server",
      "marksman",
      "vtsls",
      "json-lsp",
      "tailwindcss-language-server",
      -- Linters
      "shellcheck",
      "markdownlint-cli2",
      -- Formatters
      "stylua",
      "prettier",
      "markdown-toc",
      -- Compilers
      "tree-sitter-cli",
    },
  },
}
