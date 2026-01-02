local M = {}

local function Setup()
	vim.lsp.config("typos_lsp", {
		cmd = { "typos-lsp" },
		filetypes = {
			"c",
			"cpp",
			"cs",
			"lua",
			"rust",
			"python",
			"javascript",
			"typescript",
		},
		init_options = {
			diagnosticSeverity = "Hint",
		},
	})
end

M.Setup = Setup

return M
