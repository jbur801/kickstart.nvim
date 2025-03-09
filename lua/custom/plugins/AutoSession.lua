-- Add auto-session plugin
return {
  'rmagatti/auto-session', -- The plugin itself
  config = function()
    -- Configure auto-session here
    require('auto-session').setup {
      auto_restore_last_session = true,
      log_level = 'info',
      root_dir = '/home/josh/.local/share/nvim/sessions/',
      suppressed_dirs = { '~/', '~/Projects' },
    }

    -- Key mappings for saving sessions (1-9)
    for i = 1, 9 do
      vim.keymap.set('n', '<Leader><C-s>' .. i, [[:SessionSave(]] .. i .. [[)<CR>]], { noremap = true, silent = true })
    end

    -- Key mappings for restoring sessions (1-9)
    for i = 1, 9 do
      vim.keymap.set('n', '<Leader><C-r>' .. i, [[:SessionRestore(]] .. i .. [[)<CR>:SessionDisableAutoSave<CR>]], { noremap = true, silent = true })
    end
    vim.keymap.set('n', '<Leader><C-r>s', ':SessionSearch', { noremap = true, silent = true })
  end,
}
