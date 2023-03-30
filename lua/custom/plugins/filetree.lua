vim.keymap.set('n', '<leader><leader>', (function () require('neo-tree.sources.manager').focus('filesystem') end), { desc = 'Open Neotree' })

-- Unless you are still migrating, remove the deprecated commands from v1.x
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v2.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'MunifTanjim/nui.nvim',
  },
  config = function ()
    require('neo-tree').setup {}
  end,
}
