jestConfigFile = function()
  local file = vim.fn.expand('%:p')
  if string.find(file, "/packages/") then
      print(file)
    return string.match(file, "(.-/[^/]+/)src") .. "/" .. "jest.config.ts"
  end

  return vim.fn.getcwd() .. "/jest.config.ts"
end

cwd = function()
  local file = vim.fn.expand('%:p')
  if string.find(file, "/packages/") then
    return string.match(file, "(.-/[^/]+/)src")
  end
  return vim.fn.getcwd()
end

vim.api.nvim_set_keymap("n", "<leader>tt", "<cmd>lua require('neotest').summary.toggle()<cr>", {})
