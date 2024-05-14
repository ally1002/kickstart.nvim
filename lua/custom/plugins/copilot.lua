-- Disables the default tab mapping and sets a new one to <C-J>
vim.g.copilot_no_tab_map = true
vim.api.nvim_set_keymap('i', '<C-J>', 'copilot#Accept("<CR>")', { silent = true, expr = true })

return {
  { 'github/copilot.vim' },
}
