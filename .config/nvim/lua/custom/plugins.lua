local overrides = require "custom.configs.overrides"

local plugins = {
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    dependencies = {
      {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
          require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      {
        "rcarriga/nvim-dap-ui",
        opts = {},
        config = function(_, opts)
          local dap, dapui = require "dap", require "dapui"
          dapui.setup(opts)
          dap.listeners.after.event_initialized["dapui_config"] = function()
            dapui.open()
          end
          dap.listeners.before.event_terminated["dapui_config"] = function()
            dapui.close()
          end
          dap.listeners.before.event_exited["dapui_config"] = function()
            dapui.close()
          end
        end,
      },
      {
        "theHamsta/nvim-dap-virtual-text",
        config = true,
      },
    },
  },
  {
    "nvim-neotest/neotest",
    init = function()
      require("core.utils").load_mappings "neotest"
    end,
    dependencies = {
      { "nvim-neotest/neotest-go" },
      { "rouge8/neotest-rust" },
    },
    config = function()
      local neotest_ns = vim.api.nvim_create_namespace "neotest"
      vim.diagnostic.config({
        virtual_text = {
          format = function(diagnostic)
            local message = diagnostic.message:gsub("\n", " "):gsub("\t", " "):gsub("%s+", " "):gsub("^%s+", "")
            return message
          end,
        },
      }, neotest_ns)
      require("neotest").setup {
        status = {
          virtual_text = true,
        },
        adapters = {
          require "neotest-go" {
            args = { "-timeout=60s" },
            extra_args = { "-race", "-cover" },
          },
          require "neotest-rust",
        },
      }
    end,
  },
  -- https://github.com/sindrets/diffview.nvim
  {
    "sindrets/diffview.nvim",
    cmd = "DiffviewOpen",
    config = true,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = overrides.telescope,
    dependencies = {
      "nvim-lua/plenary.nvim",
      -- https://github.com/debugloop/telescope-undo.nvim
      "debugloop/telescope-undo.nvim",
      -- https://github.com/nvim-telescope/telescope-dap.nvim
      "nvim-telescope/telescope-dap.nvim",
    },
  },
  {
    "stevearc/dressing.nvim",
    opts = {},
  },
}

return plugins
