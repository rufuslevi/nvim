local tree = require("nvim-tree")
local api = require("nvim-tree.api")

tree.setup({
	update_focused_file = {
		enable = false,
		update_cwd = true,
		update_root = false,
	},
	sort_by = "case_sensitive",
	git = {
		ignore = false,
	},
	view = {
		side = "left",
		width = 28,
	},
	renderer = {
		group_empty = true,
	},
})
vim.g.nvim_tree_respect_buf_cwd = 1

vim.keymap.set("n", "<leader>tt", api.tree.toggle)
