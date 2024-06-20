return {
    'romgrk/barbar.nvim',
    dependencies = {},
    init = function()
      vim.g.barbar_auto_setup = false
      -- Assuming you have already set up your `opts` table
      local opts = { noremap = true, silent = false }
      -- Define your mappings
      vim.api.nvim_set_keymap('n', '<A-c>', '<Cmd>BufferClose<CR>', opts)
      vim.api.nvim_set_keymap('n', '<A-1>', '<Cmd>BufferGoto 1<CR>', opts)
      vim.api.nvim_set_keymap('n', '<A-2>', '<Cmd>BufferGoto 2<CR>', opts)
      vim.api.nvim_set_keymap('n', '<A-3>', '<Cmd>BufferGoto 3<CR>', opts)
      vim.api.nvim_set_keymap('n', '<A-4>', '<Cmd>BufferGoto 4<CR>', opts)
      vim.api.nvim_set_keymap('n', '<A-5>', '<Cmd>BufferGoto 5<CR>', opts)
      vim.api.nvim_set_keymap('n', '<A-6>', '<Cmd>BufferGoto 6<CR>', opts)
      vim.api.nvim_set_keymap('n', '<A-7>', '<Cmd>BufferGoto 7<CR>', opts)
      vim.api.nvim_set_keymap('n', '<A-8>', '<Cmd>BufferGoto 8<CR>', opts)
      vim.api.nvim_set_keymap('n', '<A-9>', '<Cmd>BufferGoto 9<CR>', opts)
      vim.api.nvim_set_keymap('n', '<A-0>', '<Cmd>BufferLast<CR>', opts)
      vim.api.nvim_set_keymap('n', '<A-,>', ':BufferPrevious<CR>', opts)
      vim.api.nvim_set_keymap('n', '<A-.>', ':BufferNext<CR>', opts)
      vim.api.nvim_set_keymap('n', '<A-t>', ':tabnew#', opts)
    end,
    opts = {
      noremap = true,
      silent = true,
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      insert_at_start = false,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  }