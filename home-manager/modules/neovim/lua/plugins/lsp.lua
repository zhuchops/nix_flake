local servers = {
  "lua_ls",
	"pyright",
  "rust_analyzer",
  "marksman",
  "nil"
}

return {

  -- Nvim-Lspconfig: базовая настройка LSP-серверов
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Функция для настройки привязок клавиш при подключении LSP-сервера
      local on_attach = function(client, bufnr)
        local bufmap = function(mode, lhs, rhs, opts)
          opts = opts or { noremap = true, silent = true }
          vim.api.nvim_buf_set_keymap(bufnr, mode, lhs, rhs, opts)
        end

        bufmap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>")
        bufmap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>")
        bufmap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>")
        bufmap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>")
        bufmap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>")
        bufmap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>")
      end

      local lspconfig_status_ok, lspconfig = pcall(require, "lspconfig")
      if not lspconfig_status_ok then
        return
      end

      local opts = {}

      for _, server in pairs(servers) do
        opts = {
          on_attach = on_attach,
          capabilities = vim.lsp.protocol.make_client_capabilities(),
        }

        server = vim.split(server, "@")[1]

        local require_ok, conf_opts = pcall(require, "user.lsp.settings." .. server)
        if require_ok then
          opts = vim.tbl_deep_extend("force", conf_opts, opts)
        end

        lspconfig[server].setup(opts)
      end
    end,
  },
}
