-- https://github.com/jose-elias-alvarez/null-ls.nvim/blob/main/doc/BUILTINS.md
local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {
  -- sql
  b.diagnostics.sqlfluff.with({
    extra_args = { "--dialect", "clickhouse" },
  }),
  b.formatting.sqlfluff.with({
    extra_args = { "--dialect", "clickhouse" },
}),

  -- Lua
  b.diagnostics.luacheck,
  b.formatting.stylua,

  -- sh
  b.diagnostics.shellcheck,
  b.formatting.shfmt,

  -- cpp
  b.diagnostics.cpplint,
  b.formatting.clang_format,

  -- cmake
  b.diagnostics.cmake_lint,
  b.formatting.cmake_format,

  -- go
  b.formatting.gofumpt,
  b.formatting.goimports,
  b.formatting.goimports_reviser,
  b.code_actions.gomodifytags,
  b.code_actions.impl,

  -- rust
  b.formatting.rustfmt,

  -- python
  b.diagnostics.ruff,
  b.formatting.black,

  -- docker
  b.diagnostics.hadolint,

  -- yaml
  b.diagnostics.yamllint,
  b.formatting.yamlfmt,

  -- toml
  b.formatting.taplo,

  -- json
  b.diagnostics.jsonlint,
  b.formatting.fixjson,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
