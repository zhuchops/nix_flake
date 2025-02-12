return {
  "nvim-treesitter/nvim-treesitter",
  opts = function()
    local configs = require("nvim-treesitter.configs")

    configs.setup({
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
      },
      sync_install = false,
      auto_install = true,
      refactor = {
        highlight_definitions = { enable = true },
        highlight_current_scope = { enable = true },
      },
      indent = { enable = true },
    })
  end
}
