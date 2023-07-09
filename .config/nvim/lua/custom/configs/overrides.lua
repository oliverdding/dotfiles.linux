local M = {}

-- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
M.treesitter = {
  ensure_installed = {
    "bash",
    "c",
    "cmake",
    "comment",
    "cpp",
    "diff",
    "dockerfile",
    "gitignore",
    "go",
    "gomod",
    "gosum",
    "http",
    "java",
    "json",
    "json5",
    "lua",
    "make",
    "markdown",
    "python",
    "regex",
    "sql",
    "rust",
    "toml",
    "css",
  },
}

M.nvimtree = {
  view = {
    side = "right",
  },
  git = {
    enable = true,
  },
  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

-- https://github.com/williamboman/mason.nvim/blob/main/PACKAGES.md
M.mason = {
  ensure_installed = {
    -- java
    "jdtls",
    "gradle-language-server",

    -- sql
    "sqlfluff",

    -- lua stuff
    "lua-language-server",
    "luacheck",
    "stylua",

    -- shell
    "bash-language-server",
    "shellcheck",
    "shfmt",

    -- c/cpp
    "clangd",
    "clang-format",
    "cpplint",

    -- cmake
    "cmakelang",
    "neocmakelsp",

    -- go
    "gopls",
    "delve",
    "gofumpt",
    "goimports",
    "goimports-reviser",
    "gomodifytags",
    "impl",

    -- rust
    "rust-analyzer",

    -- python
    "pyright",
    "ruff",
    "black",

    -- docker
    "dockerfile-language-server",
    "hadolint",
    "docker-compose-language-service",

    -- yaml
    "yaml-language-server",
    "yamlfmt",
    "yamllint",

    -- toml
    "taplo",

    --json
    "json-lsp",
    "jsonlint",
    "fixjson",

    -- css
    "css-lsp",
    "stylelint",

    -- helm
    "helm-ls",
  },
}

M.telescope = {
  extensions_list = { "themes", "terms", "undo", "dap" },
}

M.gitsigns = {
  current_line_blame = true,
}

return M
