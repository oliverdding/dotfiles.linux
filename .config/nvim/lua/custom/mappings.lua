local M = {}

M.general = {
  n = {
    ["<leader>B"] = { "<cmd> enew <CR>", "New buffer" },
  },
}

M.telescope = {
  n = {
    ["<leader>u"] = {
      function()
        require("telescope").extensions.undo.undo {}
      end,
      "Undo list",
    },
    ["<leader>dc"] = {
      function()
        require("telescope").extensions.dap.commands {}
      end,
      "Dap commands",
    },
    ["<leader>db"] = {
      function()
        require("telescope").extensions.dap.list_breakpoints {}
      end,
      "List breakpoints",
    },
    ["<leader>dv"] = {
      function()
        require("telescope").extensions.dap.variables {}
      end,
      "List breakpoints",
    },
    ["<leader>df"] = {
      function()
        require("telescope").extensions.dap.frames {}
      end,
      "List breakpoints",
    },
    ["<leader>gC"] = { "<cmd> Telescope git_commits <CR>", "Git change commits" },
    ["<leader>gB"] = { "<cmd> Telescope git_branches <CR>", "Git change branchs" },
    ["<leader>lS"] = { "<cmd> Telescope lsp_document_symbols <CR>", "List symbols" },
    ["<leader>ld"] = { "<cmd> Telescope diagnostics bufnr=0 <CR>", "File diagnostics" },
    ["<leader>lD"] = { "<cmd> Telescope diagnostics <CR>", "Project diagnostics" },
  },
}

M.diffview = {
  n = {
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

M.neotest = {
  plugin = true,
  n = {
    ["<leader>tr"] = {
      function()
        require("neotest").run.run()
      end,
      "Run nearest test",
    },
    ["<leader>td"] = {
      function()
        require("neotest").run.run { strategy = "dap" }
      end,
      "Debug nearest test",
    },
    ["<leader>tf"] = {
      function()
        require("neotest").run.run(vim.fn.expand "%")
      end,
      "Run current file",
    },
    ["<leader>tD"] = {
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
  },
}

M.disabled = {
  n = {
    ["<leader>b"] = "",
    ["<leader>th"] = "",
    ["<leader>cm"] = "",
  },
}

return M
