local M = {
	'williamboman/mason.nvim',
	dependencies = {
      'williamboman/mason-lspconfig.nvim',
      'nvim-lua/plenary.nvim',
	},
}

M.servers = {
	"lua_ls",
	"rust_analyzer",
	"clangd",
   "basedpyright"
}

function M.config()
	local lsp = require("lsp-zero")
	lsp.preset("recommended")
	
	lsp.set_preferences({
		suggest_lsp_servers = false,
	})
	
	require "lsp-zero".setup()
	require("mason").setup()
	
	require "mason-lspconfig".setup {
      lazy = true,
		function (server_name)
		    require "lspconfig" [server_name].setup {}
		end
	}
	
	require("mason-lspconfig").setup {
      lazy = true,
      ensure_installed = M.servers,
      automatic_installation = true,
	}

end

return M

