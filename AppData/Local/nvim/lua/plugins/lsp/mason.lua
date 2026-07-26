return {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
        { "mason-org/mason.nvim", opts = {
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗"
                }
            },
            registries = {
                "github:mason-org/mason-registry",
                "github:Crashdummyy/mason-registry",
            },
        } 
    },
    "neovim/nvim-lspconfig",
},
opts = {
    ensure_installed = {
        "lua_ls",
        "luau_lsp",
        "rust_analyzer",
        "cssls",
        "svelte",
        "ts_ls",
        "pyright",
        "clangd",
        "html",
        "tailwindcss",
        "gopls",
    },

    automatic_enable = false,
},
}
