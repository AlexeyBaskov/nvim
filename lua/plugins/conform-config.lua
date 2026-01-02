local M = {}

local function Setup()
	local conform = require("conform")

	if not conform then
		return
	end

	conform.setup({
		formatters_by_ft = {
			c = { "clang_format" },
			cpp = { "clang_format" },
			objc = { "clang_format" },
			objcpp = { "clang_format" },
			lua = { "stylua" },
			cs = { "csharpier" },
		},
		format_on_save = function(bufnr)
			if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
				return
			end

			return {
				timeout_ms = 500,
				lsp_format = "fallback",
			}
		end,
	})

	vim.keymap.set("", "<leader>cf", function()
		conform.format({
			async = true,
			lsp_fallback = true,
		})
	end, { desc = "Format" })

	vim.api.nvim_create_user_command("FormatEnable", function(args)
		if args.bang then
			vim.b.disable_autoformat = false
		else
			vim.b.disable_autoformat = false
			vim.g.disable_autoformat = false
		end
	end, {
		desc = "Enable formatting",
		bang = true,
	})

	vim.api.nvim_create_user_command("FormatDisable", function(args)
		if args.bang then
			vim.b.disable_autoformat = true
		else
			vim.g.disable_autoformat = true
		end
	end, {
		desc = "Disable autoformat on save",
		bang = true,
	})
end

M.Setup = Setup

return M
