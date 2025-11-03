return {
  "MeanderingProgrammer/markdown.nvim",
  dependencies = { "nvim-treesitter/nvim-treesitter" },
  ft = "markdown",
  config = function()
    require("render-markdown").setup({
      code = {
        conceal_delimiters = true,
        disable_background = true,
      },
    })

    -- Override highlights for transparency and softer style
    for i = 1, 6 do
      vim.api.nvim_set_hl(0, "RenderMarkdownH" .. i .. "Bg", { bg = "#111223" })
    end

    for i = 1, 6 do
      vim.api.nvim_set_hl(0, "@markup.heading." .. i .. ".markdown", { fg = "#81A1C1", bold = true })
    end
  end,
}
