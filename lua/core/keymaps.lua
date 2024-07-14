vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Save and format with <C-s>
vim.keymap.set('n', '<C-s>', function()
  vim.cmd('Prettier')
  vim.cmd('sleep 1000m') -- Wait for half a second
  vim.cmd('write')
end, { silent = true, noremap = true, desc = 'Save the file' })


-- Toggle NvimTree
vim.keymap.set('n', '<C-right>', ':NvimTreeToggle<Return>', { desc = 'Toggle [T]ree' })
vim.keymap.set('n', '<M-f>', ':NvimTreeFindFile<Return>', { desc = 'Find [F]ile' })

-- Exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- Shortcut for terminal
vim.keymap.set('n', '<C-t>', ':! ', { desc = 'Enter [T]erminal mode' })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })


-- Movements
-- Vertical movement
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-b>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzv')
vim.keymap.set('n', 'N', 'Nzzv')
