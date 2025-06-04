local theme_file = vim.fn.stdpath("config") .. "/lua/config/saved_theme"

_G.load_theme = function()
	local file = io.open(theme_file, "r")
	if file then
		vim.cmd("colorscheme " .. file:read("*l"))
		require("lualine").setup({ options = { theme = file:read("*l") } })
		file:close()
	end
end
