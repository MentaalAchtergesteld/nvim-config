local lspconfig = require("lspconfig")

lspconfig.rust_analyzer.setup {}
lspconfig.lua_ls.setup {}
lspconfig.html.setup {}
lspconfig.ts_ls.setup {}
lspconfig.cssls.setup {}
lspconfig.emmet_language_server.setup {}
lspconfig.gdscript.setup {
	force_setup = true,
	single_file_support = false,
	root_dir = require("lspconfig.util").root_pattern("project.godot", ".git"),
	filetypes = { "gd", "gdscript", "gdscript3" },
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
}
lspconfig.arduino_language_server.setup({
    cmd = {
        "arduino-language-server",
    }
})

lspconfig.clangd.setup {
	cmd = { "clangd", "--background-index" },
	filetypes = { "c", "cpp", "objc", "objcpp", }
}
