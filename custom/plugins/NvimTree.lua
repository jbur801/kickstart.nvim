-- Add NvimTree plugin using lazy.nvim
return {
  'nvim-tree/nvim-tree.lua', -- The NvimTree plugin
  config = function()
    -- Configuration for NvimTree
    require('nvim-tree').setup {
      auto_close = true, -- Automatically close the tree when it's the last window
      open_on_tab = true, -- Open the tree on a new tab when opening a directory
      update_focused_file = {
        enable = true, -- Enable to update the currently focused file in NvimTree
        update_cwd = true, -- Update the NvimTree cwd when opening a file
      },
      -- Customize other options as needed
    }
  end,
}
