return {
    "tscott12331/kilo-code-no-theme.nvim",
    config = function()
        require("kilo_code").setup({
            -- Installation settings
            auto_install = true,              -- Auto-install KiloCode if not found
            install_path = nil,               -- Custom installation path (nil = default)

            -- Sidebar settings
            sidebar = {
                position = "right",             -- "left" or "right"
                width = 80,                     -- Width in columns
                height = nil,                   -- Height in rows (nil = full height)
                auto_close = false,             -- Auto-close on buffer switch
            },

            -- File watcher settings
            file_watcher = {
                enabled = true,                 -- Enable file change detection
                auto_reload = true,             -- Auto-reload changed buffers
                notify_on_change = true,        -- Show notification on external changes
                debounce_ms = 100,              -- Debounce time for file events
                auto_open = true,               -- Auto-open files edited by KiloCode
                follow_mode = "vsplit",         -- How to open files: "split", "vsplit", "tab", or "current"
            },

            -- KiloCode CLI settings
            kilo_code = {
                binary = "kilo",           -- Binary name or path
                args = {},                      -- Additional CLI arguments
                env = {},                       -- Environment variables
            },

            -- Theme settings
            theme = nil,

            -- Which-key integration settings
            which_key = {
                enabled = true,                 -- Enable which-key integration
                prefix = "<leader>k",           -- Default keymap prefix
                icons = {                       -- Icons for which-key menu
                    group = "󰚩 ",
                    open = "󱂬 ",
                    close = "󰘪 ",
                    toggle = "󰔡 ",
                    install = "󰇚 ",
                    check = "󰄬 ",
                },
            },
        })  end,
}
