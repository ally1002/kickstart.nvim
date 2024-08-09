-- Theme selection, use `:Telescope colorscheme` to see all available themes

return {
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  {
    'EdenEast/nightfox.nvim',
    priority = 1000,
    init = function()
      vim.cmd.colorscheme 'dayfox'
    end,
  },
}
