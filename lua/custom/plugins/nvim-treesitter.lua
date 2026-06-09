return {
  { -- Highlight, edit, and navigate code
    'nvim-treesitter/nvim-treesitter',
    branch = 'main',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter').setup {
        install_dir = vim.fn.stdpath 'data' .. '/site',
      }

      -- Install parsers for the desired languages
      require('nvim-treesitter').install {
        'bash',
        'lua',
        'luadoc',
        'markdown',
        'markdown_inline',
        'vim',
        'vimdoc',
        'go',
        'gomod',
        'gosum',
        'terraform',
        'dockerfile',
        'gitignore',
        'json',
        'rust',
      }

      -- Enable treesitter highlighting for all supported filetypes
      vim.api.nvim_create_autocmd('FileType', {
        pattern = {
          'sh',
          'bash',
          'lua',
          'markdown',
          'vim',
          'help',
          'go',
          'gomod',
          'gosum',
          'terraform',
          'dockerfile',
          'gitignore',
          'json',
          'rust',
        },
        callback = function()
          vim.treesitter.start()
        end,
      })
    end,
  },
}
