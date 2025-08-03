local M = {
   'VonHeikemen/lsp-zero.nvim',
   branch = "v1.x",
   dependencies = {
      -- LSP support
      'neovim/nvim-lspconfig',

      -- Autocompletetion
      'hrsh7th/nvim-cmp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'saadparwaiz1/cmp_luasnip',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-nvim-lua',

      -- Snippets
      'L3MON4D3/LuaSnip',
      'rafamadriz/friendly-snippets',
   },
}

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

vim.diagnostic.config({
   signs = {
   text = {
         [vim.diagnostic.severity.ERROR] = '✘',
         [vim.diagnostic.severity.WARN] = '▲',
         [vim.diagnostic.severity.HINT] = '⚑',
         [vim.diagnostic.severity.INFO] = '»',
      },
   },
   underline = {
     severity = vim.diagnostic.severity.ERROR 
   },
   virtual_text = false,  
})

return M
