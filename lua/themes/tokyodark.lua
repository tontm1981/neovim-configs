return {
  "tiagovla/tokyodark.nvim",
  opts = {
    styles = {
        comments = { italic = true },
        keywords = { italic = true },
        identifiers = { italic = true },
        functions = {},
        variables = {},
    },
  },
  config = function(_, opts)
    require("tokyodark").setup(opts) -- calling setup is optional
    vim.cmd [[colorscheme tokyodark]]
  end,
}
