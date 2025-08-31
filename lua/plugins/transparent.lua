return {
    "xiyaowong/transparent.nvim",
    lazy = false,
    opts = {
        groups = {
            'Normal', 'NormalNC', 'Comment', 'Constant', 'Special', 'Identifier',
            'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
            'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
            'SignColumn', 'CursorLine', 'CursorLineNr', 'StatusLine', 'StatusLineNC',
            'EndOfBuffer',
        },
        extra_groups = {
            "NvimTreeNormal",
        },
        exclude_groups = {},
        on_clear = function() end,
    },
    keys = {
        {"<leader>tt", ":TransparentToggle<CR>", desc = "Toggle Transparency", silent = true},
    },
    enabled = vim.g.plugin_transparent,
}
