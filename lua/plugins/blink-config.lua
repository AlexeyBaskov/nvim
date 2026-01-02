local M = {}

local function Setup()
	require("blink.cmp").setup({
		fuzzy = {
			implementation = "lua",
		},
		keymap = {
			preset = "enter",
		},
		sources = {
			default = { "lsp", "path", "snippets", "buffer" },
		},
	})
end

M.Setup = Setup

return M
