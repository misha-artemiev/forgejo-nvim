return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { {'nvim-tree/nvim-web-devicons'}},
  config = function()
    require("dashboard").setup{
      theme = 'doom',
      config = {
        center = {
          {
            icon = '󰈞 ',
            desc = 'Find File',
            key = 'f',
            key_hl = 'Number',
            action = function() require("telescope.builtin").find_files() end,
          },
          {
            icon = ' ',
            desc = 'Open Config',
            key = 'c',
            action = ':NvimTreeToggle ~/.config/nvim'
          },
          {
            icon = ' ',
            desc = 'Open lazy',
            key = 'l',
            action = ':Lazy'
          },
          {
            icon = '󰚰 ',
            desc = 'Lazy Update',
            key = 'u',
            action = ':Lazy update'
          },
          {
            icon = '󰈆 ',
            desc = 'Quit',
            key = 'q',
            action = ':qa'
          },
        },
        vertical_center = true,
      }
    }
  end,
  enabled = true,
}
