local M = {
  filetype = {
    javascript = {
      require("formatter.filetypes.javascript").eslint_d
    },
    javascriptreact = {
      require("formatter.filetypes.javascriptreact").eslint_d
    },
    typescript = {
      require("formatter.filetypes.typescript").eslint_d
    },
    typescriptreact = {
      require("formatter.filetypes.typescriptreact").eslint_d
    },
    ["*"] = {
      require("formatter.filetypes.any").remove_trailing_whitespace
    }
 }
}

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  command = "FormatWriteLock"
})

return M
