return {
  'ally1002/spec-utils.nvim',
  dir = '~/Desktop/aly/spec-utils.nvim',
  dependencies = {
    { 'nvim-lua/plenary.nvim', name = 'plenary' },
  },
  config = function()
    require('spec-utils').setup {}

    local Utils = require 'spec-utils.utils'
    local File = require 'spec-utils.file'

    vim.keymap.set('n', '<leader><C-t>', function()
      Utils.switch_between_test_and_implementation(vim.api.nvim_buf_get_name(0))
    end)

    vim.keymap.set('n', '<leader><C-y>', function()
      File.copy_test_file(vim.api.nvim_buf_get_name(0))
    end)

    -- vim.keymap.set('n', '<leader>r', function()
    --   local path = vim.fn.expand '%:.'
    --   print(path)
    --
    --   vim.cmd('!npm run jest:watch ' .. path)
    -- end)
  end,
}
