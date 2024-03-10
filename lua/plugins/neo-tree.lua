return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  opts = {
    popup_border_style = 'rounded',
    enable_git_status = true,
  },
  config = function()
    vim.keymap.set('n', '<leader>e', ':Neotree filesystem toggle left<CR>', {})
    vim.keymap.set('n', '<leader>ge', ':Neotree git_status toggle left<CR>', {})
    vim.keymap.set('n', '<leader>bf', ':Neotree buffers toggle float<CR>', {})
  end,
}
