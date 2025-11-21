return {
	{
	'hrsh7th/nvim-cmp',
	event = "InsertEnter",
	depencencies = {
		"hrsh7th/cmp-buffer",
		"hrsh7th/cmp-path",
        "hrsh7th/cmp-nvim-lsp-signature-help",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "rafamadriz/friendly-snippets",
        "Jezda1337/nvim-html-css",
		},
	config = function()
			local cmp = require("cmp")
            local luasnip = require("luasnip")
            require("luasnip.loaders.from_vscode").lazy_load()
			cmp.setup({
				completion = {
					completeopt = "menu,menuone,preview,noselect"
				},
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-k>"] = cmp.mapping.select_prev_item(),
                    ["<C-j>"] = cmp.mapping.select_next_item(),
                    ["<C-e>"] = cmp.mapping.abort(),

                    ["<CR>"] = cmp.mapping.confirm({ select = false }),
                    ["<tab>"] = cmp.mapping.confirm({ select = false }),
                }),
				sources = cmp.config.sources({
                    { name = "nvim_lsp_signature_help" },
					{ name = "nvim_lsp" },
                    { name = "luasnip" },
					{ name = "buffer" },
					{ name = "path" },
                    { name = "html-css"},
				})
			})
		end
	}
}
