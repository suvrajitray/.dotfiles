return {
    -- add gruvbox
    { "ellisonleao/gruvbox.nvim", opts = { transparent_mode = true } },
    {
        "tokyonight.nvim",
        opts = {
            transparent = true,
            styles = {
                sidebars = "transparent",
                floats = "transparent",
            },
        },
    },
    {
        "catppuccin/nvim",
        opts = {
            transparent_background = true,
        },
    },
    {
        "thesimonho/kanagawa-paper.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
        transparent = true,
    },
    {
        "rebelot/kanagawa.nvim",
        priority = 1000,
        opts = {
            transparent = true,
            theme = "wave",
            compilie = true,
            colors = {
                theme = {
                    all = {
                        ui = {
                            bg_gutter = "none",
                        },
                    },
                },
            },
            overrides = function(colors)
                local theme = colors.theme
                return {
                    NormalFloat = { bg = "none" },
                    FloatBorder = { bg = "none" },
                    FloatTitle = { bg = "none" },

                    -- Save an hlgroup with dark background and dimmed foreground
                    -- so that you can use it where your still want darker windows.
                    -- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
                    NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

                    -- Popular plugins that open floats will link to NormalFloat by default;
                    -- set their background accordingly if you wish to keep them dark and borderless
                    -- LazyNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                    -- MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },
                }
            end,
        },
    },
    {
        "sainnhe/gruvbox-material",
        lazy = false,
        priority = 1000,
        config = function()
            -- Optionally configure and load the colorscheme
            -- directly inside the plugin declaration.
            vim.g.gruvbox_material_enable_italic = true
            vim.g.gruvbox_material_transparent_background = true
        end,
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        opts = {
            styles = {
                transparency = true,
            },
        },
    },
    -- Configure LazyVim to load colorscheme.
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "rose-pine",
        },
    },
}
