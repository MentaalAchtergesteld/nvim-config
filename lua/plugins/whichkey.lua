local wk = require("which-key")

wk.add({
	{ "<leader>d", desc = "duplicate file" },
--	{ "<leader>p", desc = "toggle theme" },
	{ "<leader>u", desc = "open url" },
	{ "<leader>z", desc = "floating terminal" },
	{ "<leader>f", desc = "fzf" },
	{ "<leader>g", desc = "grep" },
	{ "<leader>G", desc = "grep under cursor" },
	{ "<leader>x", desc = "chmod +x" },
	{ "<leader>t", desc = "view files" },
	{ "<leader>R", desc = "reload config" },
	{ "<leader>vs", desc = "vsplit next buf" },
--	{ "<leader>w", desc = "write" },
	{ "<leader>W", desc = "toggle wrap" },
	{ "<leader>q", desc = "close buf" },
	{ "<leader>Q", desc = "close buf!" },
	{ "<leader>U", desc = "close ALL buf" },
	{ "<leader>nn", desc = "toggle relative nums" },
	{ "<leader>H", desc = "htop terminal" },
--	{ "<leader>T", desc = "git status" },
	{ "<leader>F", desc = "fzf opts" },
	{ "<leader>k", desc = "force LSP" },
})
