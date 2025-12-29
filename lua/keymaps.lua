vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>cd", function()
	vim.diagnostic.jump({ count = 1, float = true })
end, { desc = "Code next diagnostic" })

vim.keymap.set("n", "<leader>cD", function()
	vim.diagnostic.jump({ count = -1, float = true })
end, { desc = "Code prev diagnostic" })

vim.keymap.set("n", "<leader>ca", function()
	vim.lsp.buf.code_action()
end, { desc = "Code actions" })

local telescopeKeymapConfiguration = function()
	local telescope = require("telescope.builtin")

	vim.keymap.set("n", "<leader>fg", function()
		telescope.live_grep()
	end, { desc = "Find in project" })

	vim.keymap.set("n", "<leader>ff", function()
		telescope.find_files()
	end, { desc = "Find files" })

	vim.keymap.set("n", "<leader>fw", function()
		require("telescope.builtin").grep_string()
	end, { desc = "Search word under cursor" })

	vim.keymap.set("n", "<leader>fcs", function()
		require("telescope.builtin").live_grep({
			glob_pattern = "*.cs",
		})
	end, { desc = "Find in C# files" })

	vim.keymap.set("n", "<leader>fF", function()
		require("telescope.builtin").git_files()
	end, { desc = "Find git files" })

	vim.keymap.set("n", "<leader>gs", function()
		require("telescope.builtin").git_status()
	end, { desc = "Find git status" })

	vim.keymap.set("n", "<leader>gc", function()
		require("telescope.builtin").git_commits()
	end, { desc = "Find git commits" })

	vim.keymap.set("n", "<leader>gb", function()
		require("telescope.builtin").git_branches()
	end, { desc = "Find git branches" })
end

telescopeKeymapConfiguration()
