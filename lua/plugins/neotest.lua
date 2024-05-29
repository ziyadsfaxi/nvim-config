return {
  'nvim-neotest/neotest',
  dependencies = {
    'nvim-neotest/nvim-nio',
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'nvim-treesitter/nvim-treesitter',

    'V13Axel/neotest-pest',
  },
  keys = {
    {
      '<leader>tn',
      function()
        require('neotest').run.run()
      end,
      { desc = '[T]est [N]earest' },
    },
    {
      '<leader>tf',
      function()
        require('neotest').run.run(vim.fn.expand '%')
      end,
      { desc = '[T]est [N]earest' },
    },
  },
  config = function()
    local neoconf = require 'neoconf'

    require('neotest').setup {
      log_level = vim.log.levels.DEBUG,
      adapters = {
        require 'neotest-pest' {
          sail_project_path = neoconf.get 'neotest-pest.sail_project_path',
          results_path = neoconf.get 'neotest-pest.results_path',
        },
      },
    }
  end,
}
