return {
  "LazyVim/LazyVim",
  opts = {
    colorscheme = "nord",
  },

  init = function()
    vim.api.nvim_create_autocmd("ColorScheme", {
      callback = function()
        vim.api.nvim_set_hl(0, "DiffAdd", {
          fg = "#A3BE8C",
          bg = "NONE",
        })

        vim.api.nvim_set_hl(0, "DiffChange", {
          fg = "#EBCB8B",
          bg = "NONE",
        })

        vim.api.nvim_set_hl(0, "DiffDelete", {
          fg = "#BF616A",
          bg = "NONE",
        })

        vim.api.nvim_set_hl(0, "DiffText", {
          fg = "#EBCB8B",
          bg = "NONE",
          bold = true,
        })
      end,
    })
  end,
}
