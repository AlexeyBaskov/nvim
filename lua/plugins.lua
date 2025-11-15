local git_appendix = "https://github.com/"

vim.pack.add({
	git_appendix .. "folke/which-key.nvim",
	git_appendix .. "neovim/nvim-lspconfig",
	git_appendix .. "mason-org/mason.nvim",
	git_appendix .. "mason-org/mason-lspconfig.nvim",
	git_appendix .. "stevearc/conform.nvim",
})

local wk = require("which-key")

require("mason").setup()
require("mason-lspconfig").setup({
	ensure_installed = { "lua_ls", "stylua" },
})
require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	},
})
