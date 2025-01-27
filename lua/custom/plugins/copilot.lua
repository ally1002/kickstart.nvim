vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("<CR>")', { silent = true, expr = true })

return {
  'github/copilot.vim',
  event = 'VimEnter',
  init = function()
    vim.g.copilot_enabled = false

    vim.g.copilot_no_tab_map = true
    vim.g.copilot_workspace_folders = { vim.fn.getcwd() }
  end,
}
