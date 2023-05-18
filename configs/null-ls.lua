local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local opts = {
  debug = true,
  sources = {

    -- webdev stuff
    b.formatting.deno_fmt, -- choosed deno for ts/js files cuz its very fast!

    -- Lua
    b.formatting.stylua,

    -- javascript
    b.formatting.deno_fmt,

    -- python
    b.formatting.autopep8,

    -- cp & cpp
    b.formatting.clang_format,

    b.formatting.prettier.with {
      filetypes = {
        "html",
        "markdown",
        "css",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "python",
        "cpp",
        "c",
      },
    }, -- so prettier works only on these filetypes
  },

  on_attach = function(client, bufnr)
    if client.supports_method "textDocument/formatting" then
      vim.api.nvim_clear_autocmds {
        group = augroup,
        buffer = bufnr,
      }
      vim.api.nvim_create_autocmd("BufWritePre", {
        group = augroup,
        buffer = bufnr,
        callback = function()
          vim.lsp.buf.format { bufnr = bufnr }
        end,
      })
    end
  end,
}

return opts
