-- Call CodeLens refresh
vim.api.nvim_create_autocmd("User", {
	pattern = "LspAttached",
	once = true,
	callback = vim.lsp.codelens.refresh,
})

vim.api.nvim_create_autocmd({ "BufEnter", "BufWinEnter" }, {
	pattern = "*.norg",
	callback = function()
		require("which-key").register(require("mappings").neorg_labels, {
			mode = "n",
			prefix = "<leader>",
			buffer = 0,
			noremap = true,
			silent = true,
		})
	end,
})
