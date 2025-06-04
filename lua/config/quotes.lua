local quote_file = vim.fn.stdpath("config") .. "/lua/config/quotes"

local quotes = {}

local function load_quotes()
		local file = io.open(quote_file, "r")
		if not file then return end
		for line in file:lines() do
				if line ~= "" then table.insert(quotes, line) end
		end
		file:close()
end

load_quotes()

function get_quote() 
		local quotes = {}
		local file = io.open(quote_file, "r")
		if not file then return "No quotes found :(" end

		for line in file:lines() do
				if line ~= "" then
						table.insert(quotes, line)
				end
		end
		file:close()

		if #quotes == 0 then return "No quotes found :(" end

		math.randomseed(os.time())
		return quotes[math.random(#quotes)]
end

return {
		get_quote = get_quote
} 
