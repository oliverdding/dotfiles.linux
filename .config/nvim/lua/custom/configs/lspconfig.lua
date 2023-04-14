-- https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = {
  "lua_ls",
  "bashls",
  "cmake",
  "gopls",
  "jdtls",
  "gradle_ls",
  "rust_analyzer",
  "pyright",
  "dockerls",
  "docker_compose_language_service",
  "yamlls",
  "jsonls",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- Manually setup some LSP

lspconfig["clangd"].setup {
  on_attach = on_attach,
  cmd = {
    "clangd",
    "--compile-commands-dir=build",
    "--background-index",
    "-j=8",
    --"-log=verbose",
    "--offset-encoding=utf-16", -- temporary fix to stop null-ls
    "--enable-config",
    "--clang-tidy",
    "--all-scopes-completion",
    "--completion-style=detailed",
    "--function-arg-placeholders",
    "--header-insertion=iwyu",
    "--pch-storage=memory",
  },
  capabilities = capabilities,
}

