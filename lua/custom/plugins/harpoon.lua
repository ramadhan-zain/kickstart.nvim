return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local harpoon = require 'harpoon'
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    vim.keymap.set('n', '<leader>a', mark.add_file, { desc = 'Harpoon: Add file to list' })
    vim.keymap.set('n', '<leader>lh', ui.toggle_quick_menu, { desc = 'Harpoon: Toggle quick menu' })

    vim.keymap.set('n', '<leader>1', function()
      ui.nav_file(1)
    end, { desc = 'Harpoon: Navigate to file 1' })
    vim.keymap.set('n', '<leader>2', function()
      ui.nav_file(2)
    end, { desc = 'Harpoon: Navigate to file 2' })
    vim.keymap.set('n', '<leader>3', function()
      ui.nav_file(3)
    end, { desc = 'Harpoon: Navigate to file 3' })
    vim.keymap.set('n', '<leader>4', function()
      ui.nav_file(4)
    end, { desc = 'Harpoon: Navigate to file 4' })

    -- Optional: Toggle previous & next buffers
    vim.keymap.set('n', '<C-S-P>', function()
      harpoon:list():prev()
    end, { desc = 'Harpoon: Navigate to previous file' })
    vim.keymap.set('n', '<C-S-N>', function()
      harpoon:list():next()
    end, { desc = 'Harpoon: Navigate to next file' })
  end,
}
