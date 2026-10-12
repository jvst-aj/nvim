return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = { enabled = false },
        ts_ls = { enabled = false },
        tsgo = {
          mason = false,
          cmd = function(dispatchers, config)
            local root = config.root_dir or vim.fn.getcwd()

            return vim.lsp.rpc.start({
              root .. "/node_modules/.bin/tsc",
              "--lsp",
              "--stdio",
            }, dispatchers, { cwd = root })
          end,
        },
      },
    },
  },
}
