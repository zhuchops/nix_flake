return { 
  'echasnovski/mini.completion',
  opts = {
    lsp_completion = {
      source_func = "omnifunc",
      auto_setup = true,
    },
    mappings = {
      force_twostep = '<C-Space>', -- Force two-step completion
      force_fallback = '<A-Space>', -- Force fallback completion
    },
  },
}
