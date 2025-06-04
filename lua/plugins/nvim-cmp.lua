local cmp = require("cmp")

cmp.setup({
  mapping = {
    ['<Tab>'] = cmp.mapping.select_next_item(),      -- volgende suggestie
    ['<S-Tab>'] = cmp.mapping.select_prev_item(),    -- vorige suggestie
    ['<C-n>'] = cmp.mapping.select_next_item(),      -- alternatief voor Tab
    ['<C-p>'] = cmp.mapping.select_prev_item(),      -- alternatief voor Shift+Tab
    ['<CR>'] = cmp.mapping.confirm({ select = true }), -- bevestig keuze
    ['<C-d>'] = cmp.mapping.scroll_docs(-4),         -- scroll doc omhoog
    ['<C-f>'] = cmp.mapping.scroll_docs(4),          -- scroll doc omlaag
    ['<C-Space>'] = cmp.mapping.complete(),          -- forceer suggesties
    ['<C-e>'] = cmp.mapping.abort(),                 -- sluit menu
  },
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path" },
	})
})
