local M = {}

M.general = {
  n = {
    ["<leader>B"] = { "<cmd> enew <CR>", "New buffer" },
  },
}

M.telescope = {
  n = {
    ["<leader>u"] = { "<cmd>Telescope undo<cr>", "Undo list" },
    ["<leader>bl"] = {
      function()
        require("telescope").extensions.dap.list_breakpoints {}
      end,
      "List breakpoints",
    },
    ["<leader>gb"] = {
      "<cmd>DiffviewFileHistory<cr>",
      "Git diffs branch",
    },
    ["<leader>gf"] = {
      "<cmd>DiffviewFileHistory %<cr>",
      "Git diffs file",
    },
    ["<leader>gx"] = {
      "<cmd>DiffviewClose<cr>",
      "Git diffs close",
    },
  },
}

M.dapui = {
  n = {
    ["<leader>du"] = {
      function()
        require("dapui").toggle()
      end,
      "Toggle dapui",
    },
    ["<leader>de"] = {
      function()
        require("dapui").eval()
      end,
      "Eval",
    },
  },
  v = {
    ["<leader>de"] = {
      function()
        require("dapui").eval()
      end,
      "Eval",
    },
  },
}

M.dap = {
  n = {
    ["<leader>bb"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle breakpoint",
    },
    ["<leader>bc"] = {
      function()
        require("dap").set_breakpoint(vim.fn.input "Breakpoint condition: ")
      end,
      "Breakpoint condition",
    },
    ["<leader>bC"] = {
      function()
        require("dap").clear_breakpoints()
      end,
      "Clear breakpoint",
    },
    ["<leader>dc"] = {
      function()
        require("dap").continue()
      end,
      "Continue",
    },
    ["<leader>dr"] = {
      function()
        require("dap").restart()
      end,
      "Restart",
    },
    ["<leader>dl"] = {
      function()
        require("dap").run_last()
      end,
      "Run last",
    },
    ["<leader>ds"] = {
      function()
        require("dap").terminate()
      end,
      "Stop",
    },
    ["<leader>dC"] = {
      function()
        require("dap").run_to_cursor()
      end,
      "Run to cursor",
    },
    ["<leader>dI"] = {
      function()
        require("dap").step_into()
      end,
      "Step into",
    },
    ["<leader>do"] = {
      function()
        require("dap").step_over()
      end,
      "Step over",
    },
    ["<leader>dO"] = {
      function()
        require("dap").step_out()
      end,
      "Step out",
    },
    ["<leader>dk"] = {
      function()
        require("dap").up()
      end,
      "Up",
    },
    ["<leader>dj"] = {
      function()
        require("dap").down()
      end,
      "Down",
    },
    ["<leader>dp"] = {
      function()
        require("dap").pause()
      end,
      "Pause thread",
    },
  },
}

M.neotest = {
  plugin = true,
  n = {
    ["<leader>tr"] = {
      function()
        require("neotest").run.run()
      end,
      "Run nearest test",
    },
    ["<leader>tf"] = {
      function()
        require("neotest").run.run(vim.fn.expand "%")
      end,
      "Run current file",
    },
    ["<leader>td"] = {
      function()
        require("neotest").run.run(vim.fn.input "Directory: ")
      end,
      "Run test in directory",
    },
    ["<leader>ts"] = {
      function()
        require("neotest").run.stop()
      end,
      "Run stop",
    },
    ["<leader>ta"] = {
      function()
        require("neotest").run.attach()
      end,
      "Run attach",
    },
    ["<leader>dt"] = {
      function()
        require("neotest").run.run { strategy = "dap" }
      end,
      "Debug nearest test",
    },
  },
}

M.disabled = {
  n = {
    ["<leader>b"] = "",
  },
}

return M
