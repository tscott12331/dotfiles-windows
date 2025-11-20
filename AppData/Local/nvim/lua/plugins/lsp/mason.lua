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
        "rust_analyzer",
        "cssls",
        "svelte",
        "ts_ls",
        "sqlls",
        "pyright",
        "clangd",
        "html",
        "tailwindcss",
    },

    automatic_enable = false,
},
}
