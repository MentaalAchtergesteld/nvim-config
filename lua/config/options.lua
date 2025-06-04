local options = {
		laststatus = 3,
		ruler = false,
		showmode = false,
		showcmd = false,
		wrap = true,
		mouse = "a",
		clipboard = "unnamedplus",
		history = 100,
		swapfile = false,
		backup = false,
		undofile = true,
		cursorline = true,
		ttyfast = true,
		smoothscroll = true,
		title = true,

		number = true,
		relativenumber = true,
		numberwidth = 4,

		smarttab = true,
		cindent = true,
		autoindent = true,
		tabstop = 2,
		shiftwidth = 2,

		foldmethod = "expr",
		foldlevel = 99,
		foldexpr = "nvim_treesitter#foldexpr()",

		termguicolors = true,

		ignorecase = true,
		smartcase = true,

		conceallevel = 2,
		concealcursor = "nc",

		splitkeep = "screen",
}

for k, v in pairs(options) do
		vim.opt[k] = v
end

vim.diagnostic.config({
		virtual_text = true,
		signs = false,
		underline = true,
		update_in_insert = false,
})
