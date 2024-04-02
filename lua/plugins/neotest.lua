return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',

    'V13Axel/neotest-pest',
  },
  config = function()
    require('neotest').setup {
      log_level = vim.log.levels.DEBUG,
      adapters = {
        require 'neotest-pest' {
          sail_enabled = function()
            return true
          end,

          results_path = function()
            return 'storage/app/pest'
          end,
        },
      },
    }
  end,
}
