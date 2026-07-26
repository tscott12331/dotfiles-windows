-- config native treesitter
vim.api.nvim_create_autocmd("FileType", {
    callback = function()
        -- 1. Core Syntax Highlighting
        -- Check if a native tree-sitter parser is available for the current filetype
        local lang = vim.treesitter.language.get_lang(vim.bo.filetype) or vim.bo.filetype
        local has_parser, _ = pcall(vim.treesitter.language.add, lang)

        if has_parser then
            pcall(vim.treesitter.start)

            -- 2. Core Code Folding
            vim.wo.foldmethod = "expr"
            vim.wo.foldexpr = "v:lua.vim.treesitter.foldexpr()"
            vim.wo.foldlevel = 99 -- Keeps folds open by default

            -- 3. Tree-sitter Indentation (Falls back to nvim-treesitter script)
            vim.bo.indentexpr = "v:lua.require('nvim-treesitter').indentexpr()"
        end
    end,
})
