local QUOTER_PATH = os.getenv("HOME").."/Scripts/quoter";
local function get_quote()
	local handle = io.popen("bash "..QUOTER_PATH.." -r");
	if handle == nil then return "Couldn't find quoter script" end;

	local result = handle:read("*a");
	handle:close();

	result = result:gsub("^%s+", ""):gsub("%s+$", "")
	return result
end

return {
		get_quote = get_quote
}
