local Util = require("lazyvim.util")
local map = Util.safe_keymap_set

return {
  { "nvim-neotest/neotest-jest" },
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = { "neotest-jest" },
    },
    keys = function()
      local neotest = require("neotest")
      map("n", "<C-t>f", function()
        neotest.run.run(vim.fn.expand("%"))
      end, { desc = "Run tests in file" })
      map("n", "<C-t>*", function()
        neotest.run.run(vim.loop.cwd())
      end, { desc = "Run all test files" })
      map("n", "<C-t>", function()
        require("neotest").run.run()
      end, { desc = "Run Nearest" })
      map("n", "<C-t>l", function()
        require("neotest").run.run_last()
      end, { desc = "Run Last" })
      map("n", "<C-t>sm", function()
        require("neotest").summary.toggle()
      end, { desc = "Toggle Summary" })
      map("n", "<C-t>o", function()
        require("neotest").output.open({ enter = true, auto_close = true })
      end, { desc = "Show Output" })
      map("n", "<C-t>O", function()
        require("neotest").output_panel.toggle()
      end, { desc = "Toggle Output Panel" })
      map("n", "<C-t>s", function()
        require("neotest").run.stop()
      end, { desc = "Stop" })
    end,
  },
}
