require('telescope').setup{
  defaults = {
    file_ignore_patterns = {
      "node_modules",
      ".nx",
      ".git",
      ".vscode",
      ".husky",
      ".github",
      ".verdaccio",
        ".gitkeep",
    }
  }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', function()
    builtin.find_files({ previewer = false, hidden = true, no_ignore = true, layout_strategy = 'horizontal', layout_config = { width = 0.9 }})
end)
--vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
