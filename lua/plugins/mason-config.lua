local M = {}

local function Setup()
	require("mason").setup({
		registries = {
			"github:mason-org/mason-registry",
			"github:Crashdummyy/mason-registry",
		},
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
	})

	require("mason-lspconfig").setup({
		ensure_installed = {
			"lua_ls",
			"stylua",
			-- "clangd",
			-- "typos-lsp",
			-- "roslyn",
			-- "csharpier",
		},
	})
end

M.Setup = Setup

return M
