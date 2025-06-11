return {
  'supermaven-inc/supermaven-nvim',
  config = function()
    require('supermaven-nvim').setup {
      keymaps = {
        accept_suggestion = '<Tab>',
        clear_suggestion = '<C-]>',
        accept_word = '<C-n>',
      },
    }

    local api = require 'supermaven-nvim.api'

    vim.keymap.set('n', '<leader>smt', function() api.toggle() end)
    vim.keymap.set('n', '<leader>smr', function() api.restart() end)
  end,
}
