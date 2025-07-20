local lspconfig = require("lspconfig")

lspconfig.rust_analyzer.setup {}
lspconfig.lua_ls.setup {}
lspconfig.html.setup {}
lspconfig.ts_ls.setup {}
lspconfig.cssls.setup {}
lspconfig.emmet_language_server.setup {}
lspconfig.gdscript.setup {
	capabilities = require("cmp_nvim_lsp").default_capabilities(),
	root_dir = require("lspconfig.util").root_pattern("project.godot", ".git"),
}
