-- IMPORTANT
-- cl compiler only works in x64 tools env, need to figure out why
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    lazy = false,
    branch = "main",
    config = function()
        local ts = require("nvim-treesitter")
        local languages = { "c", "lua", "vim", "rust", "tsx", "sql", "go" }
        ts.install(languages)
    end,
}

