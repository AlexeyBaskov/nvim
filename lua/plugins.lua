local nvim_plugins = {
	"neovim/nvim-lspconfig",
	"mason-org/mason.nvim",
	"folke/which-key.nvim",
	"mason-org/mason-lspconfig.nvim",
	"stevearc/conform.nvim",
	"saghen/blink.cmp",
	"seblyng/roslyn.nvim",
	"nvim-lua/plenary.nvim",
	"nvim-telescope/telescope.nvim",
	"nvim-treesitter/nvim-treesitter",
}

local git_appendix = "https://github.com/"
for k, v in pairs(nvim_plugins) do
	nvim_plugins[k] = git_appendix .. v
end

vim.pack.add(nvim_plugins)

require("plugins.mason-config").Setup()
require("plugins.treesitter-config").Setup()
require("plugins.blink-config").Setup()
require("plugins.lua-lsp-config").Setup()
require("plugins.roslyn-lsp-config").Setup()
require("plugins.typos-lsp-config").Setup()
require("plugins.conform-config").Setup()
require("plugins.clangd-lsp-config").Setup()

require("which-key").setup({})
require("telescope").setup({})

vim.diagnostic.config({
	--underline = true,
	virtual_text = false,
	virtual_lines = true,
	severity_sort = true,
	float = { border = "rounded" },
})
