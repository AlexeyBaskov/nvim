local M = {}

local function Setup()
	require("nvim-treesitter").setup({
		ensure_installed = {
			"c",
			"cpp",
			"c_sharp",
		},
		highlight = { enable = true },
	})
end

M.Setup = Setup

return M
