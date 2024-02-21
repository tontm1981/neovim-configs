local builtin = require("telescope.builtin")
return {
  "nvim-telescope/telescope.nvim",
  keys = {
    {
      "<C-f>f",
      builtin.find_files,
      desc = "Find Plugin File",
    },
    {
      "<C-f>grep",
      builtin.live_grep,
      desc = "Fuzzy find in files",
    },
    {
      "<C-f>git",
      builtin.git_files,
      desc = "Find in Git repo",
    },
    {
      "<C-f>h",
      builtin.help_tags,
      desc = "Help Tags",
    },
    {
      "<C-f>gs",
      function()
        builtin.grep_string({ search = vim.fn.input("Grep > ") })
      end,
      desc = "Grep search",
    },
    {
      "<C-f>b",
      builtin.buffers,
      desc = "Find in buffers",
    },
    {
      "<C-f>theme",
      builtin.colorscheme,
      desc = "Theme selector",
    },
    {
      "<C-f>o",
      builtin.oldfiles,
      desc = "Search in files history",
    },
    {
      "<C-f>ol",
      builtin.treesitter,
      desc = "Treesitter",
    },
  },
}
