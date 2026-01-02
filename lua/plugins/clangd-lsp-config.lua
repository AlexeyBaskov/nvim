local M = {}

local function Setup()
	vim.lsp.config("clangd", {
		capabilities = require("blink.cmp").get_lsp_capabilities(),
		filetypes = {
			"c",
			"cpp",
			"objc",
			"objcpp",
		},
		cmd = { "clangd" },
	})

	--vim.lsp.enable("clangd")
end

M.Setup = Setup

return M
