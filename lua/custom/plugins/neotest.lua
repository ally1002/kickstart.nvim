return {
  'nvim-neotest/neotest',
  lazy = false,
  dependencies = {
    'nvim-lua/plenary.nvim',
    'antoinemadec/FixCursorHold.nvim',
    'fredrikaverpil/neotest-golang',
    'olimorris/neotest-rspec',
    'nvim-neotest/neotest-jest',
  },
  keys = {
    {
      '<leader>tt',
      function()
        require('neotest').run.run(vim.fn.expand('%'))
      end,
      desc = 'Run File Tests',
    },
    {
      '<leader>tn',
      function()
        require('neotest').run.run()
      end,
      desc = 'Run Nearest Test',
    },
    {
      '<leader>tl',
      function()
        require('neotest').run.run_last()
      end,
      desc = 'Run Last Test',
    },
    {
      '<leader>to',
      function()
        require('neotest').output.open()
      end,
      desc = 'Show Test Output',
    },
    {
      '<leader>tw',
      function()
        require('neotest').watch.toggle(vim.fn.expand('%'))
      end,
      desc = 'Toggle Test Watch',
    },
  },
  config = function()
    require('neotest').setup {
      discovery = {
        enabled = false,
      },
      adapters = {
        require('neotest-golang') {
          runner = 'go test',
          go_test_args = { '-v', '-count=1' },
        },
        require('neotest-rspec'),
        require('neotest-jest'),
      },
    }
  end,
}
