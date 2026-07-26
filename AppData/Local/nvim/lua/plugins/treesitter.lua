-- IMPORTANT
-- cl compiler only works in x64 tools env, need to figure out why
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    branch = "main",
    -- build = function()
    --     local nvtsi = require("nvim-treesitter.install")
    --     nvtsi.update({ with_sync = true })()
    --     nvtsi.compilers = { "cl" }
    -- end,
    config = function()
        require("nvim-treesitter").setup({
            ensure_installed = { "c", "lua", "vim", "rust", "tsx", "sql"},
            auto_install = false, -- while compiler only works in x64 tools
            highlight = {
                enable = true,
            }
        })
        -- require'nvim-treesitter.configs'.setup {
        -- }

    end,
}

