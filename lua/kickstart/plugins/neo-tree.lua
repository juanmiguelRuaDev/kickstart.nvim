-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    filesystem = {
      filtered_items = {
        always_show = {
          '.gitignore',
          '.gitlab-ci.yml',
          '.env',
        },
      },
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
  config = function(_, opts)
    require('neo-tree').setup(opts)
    local events = require 'neo-tree.events'
    events.fire_event(events.GIT_EVENT)

    vim.api.nvim_create_autocmd('User', {
      pattern = 'GitIndexUpdated',
      callback = function()
        events.fire_event(events.GIT_EVENT)
      end,
    })

    vim.schedule(function()
      vim.loop.new_fs_event():start(vim.fn.getcwd() .. '/.git/index', {}, function()
        vim.schedule(function()
          events.fire_event(events.GIT_EVENT)
        end)
      end)
    end)
  end,
}
