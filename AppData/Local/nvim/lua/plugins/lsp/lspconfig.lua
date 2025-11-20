return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
    },
    config = function()
        -- import cmp-nvim-lsp plugin
        local cmp_nvim_lsp = require("cmp_nvim_lsp")

        local keymap = vim.keymap
        local opts = { noremap = true, silent = true }
        local on_attach = function(client, bufnr)
            opts.buffer = bufnr
            opts.desc = "Show LSP references"
            keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

            opts.desc = "Go to declaration"
            keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

            opts.desc = "Show LSP definitions"
            keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions

            opts.desc = "Show LSP implementations"
            keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

            opts.desc = "Show LSP type definitions"
            keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

            opts.desc = "See available code actions"
            keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

            opts.desc = "Show buffer diagnostics"
            keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

            opts.desc = "Show line diagnostics"
            keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

            opts.desc = "Go to previous diagnostic"
            keymap.set("n", "[d", vim.diagnostic.get_prev, opts) -- jump to previous diagnostic in buffer

            opts.desc = "Go to next diagnostic"
            keymap.set("n", "]d", vim.diagnostic.get_next, opts) -- jump to next diagnostic in buffer

            opts.desc = "Show documentation for what is under cursor"
            keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

            opts.desc = "Restart LSP"
            keymap.set("n", "<leader>rs", "<cmd>LspRestart<CR>", opts)
        end
        local capabilities = cmp_nvim_lsp.default_capabilities()
        local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
        for type, icon in pairs(signs) do
            local hl = "DiagnosticSign" .. type
            vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
        end
        vim.lsp.config("tailwindcss", {
            capabilities = capabilities,
            on_attach = on_attach,
        })
        vim.lsp.enable("tailwindcss")

        vim.lsp.config("cssls", {
            capabilities = capabilities,
            on_attach = on_attach,
        })
        vim.lsp.enable("cssls")
        
        vim.lsp.config("rust_analyzer", {
            capabilities = capabilities,
            on_attach = on_attach,
        })
        vim.lsp.enable("rust_analyzer")

        vim.lsp.config("sqlls", {
            capabilities = capabilities,
            on_attach = on_attach,
        })
        vim.lsp.enable("sqlls")

        vim.lsp.config("ts_ls", {
            capabilities = capabilities,
            on_attach = on_attach,
        })
        vim.lsp.enable("ts_ls")

        vim.lsp.config("pyright", {
            capabilities = capabilities,
            on_attach = on_attach,
        })
        vim.lsp.enable("pyright")

        vim.lsp.config("svelte", {
            capabilities = capabilities,
            on_attach = on_attach,
        })
        vim.lsp.enable("svelte")

         vim.lsp.config("clangd", {
            capabilities = capabilities,
            on_attach = on_attach,
        })
        vim.lsp.enable("clangd")

        vim.lsp.config("lua_ls", {
            capabilities = capabilities,
            on_attach = on_attach,
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.expand("config") .. "/lua"] = true,

                        },
                    },
                },
            }
        })
        vim.lsp.enable("lua_ls")

        vim.lsp.config("html", {
            capabilities = capabilities,
            on_attach = on_attach,
        })
        vim.lsp.enable("html")

        vim.lsp.config("roslyn", {
            on_attach = on_attach,
            capabilities = capabilities,
            settings = {
                ["csharp|inlay_hints"] = {
                    csharp_enable_inlay_hints_for_implicit_object_creation = true,
                    csharp_enable_inlay_hints_for_implicit_variable_types = true,
                },
                ["csharp|code_lens"] = {
                    dotnet_enable_references_code_lens = true,
                },
            },
        })
        vim.lsp.enable("roslyn")
    end
}
