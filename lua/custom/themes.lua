return {
  {
    'EdenEast/nightfox.nvim',
    priority = 1000,
    init = function()
      -- Theme selection, use `:Telescope colorscheme` to see all available themes
      vim.cmd.colorscheme 'dayfox'

      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
