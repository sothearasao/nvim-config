-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/theara/.cache/nvim/packer_hererocks/2.1.1692716794/share/lua/5.1/?.lua;/home/theara/.cache/nvim/packer_hererocks/2.1.1692716794/share/lua/5.1/?/init.lua;/home/theara/.cache/nvim/packer_hererocks/2.1.1692716794/lib/luarocks/rocks-5.1/?.lua;/home/theara/.cache/nvim/packer_hererocks/2.1.1692716794/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/theara/.cache/nvim/packer_hererocks/2.1.1692716794/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cellular-automaton.nvim"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/cellular-automaton.nvim",
    url = "https://github.com/eandrju/cellular-automaton.nvim"
  },
  ["cloak.nvim"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/cloak.nvim",
    url = "https://github.com/laytan/cloak.nvim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["conform.nvim"] = {
    config = { "\27LJ\2\n×\3\0\0\6\0\27\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0034\4\3\0005\5\b\0>\5\1\4=\4\t\0034\4\3\0005\5\n\0>\5\1\4=\4\v\0034\4\3\0005\5\f\0>\5\1\4=\4\r\0034\4\3\0005\5\14\0>\5\1\4=\4\15\3=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\20\0009\0\21\0009\0\22\0005\2\23\0'\3\24\0'\4\25\0005\5\26\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2-<cmd>lua require('conform').format()<cr>\15<leader>mp\1\3\0\0\6n\6v\bset\vkeymap\bvim\19format_on_save\1\0\2\15timeout_ms\3ô\3\17lsp_fallback\2\21formatters_by_ft\1\0\0\tyaml\1\2\0\0\rprettier\tjson\1\2\0\0\rprettier\15typescript\1\2\0\0\rprettier\15javascript\1\2\0\0\rprettier\vpython\1\3\0\0\nisort\nblack\blua\1\0\0\1\2\0\0\vstylua\nsetup\fconform\frequire\0" },
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/conform.nvim",
    url = "https://github.com/stevearc/conform.nvim"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  harpoon = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/harpoon",
    url = "https://github.com/theprimeagen/harpoon"
  },
  ["lsp-zero.nvim"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/lsp-zero.nvim",
    url = "https://github.com/VonHeikemen/lsp-zero.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["neodev.nvim"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/neodev.nvim",
    url = "https://github.com/folke/neodev.nvim"
  },
  neotest = {
    config = { "\27LJ\2\n%\0\1\3\0\3\0\0046\1\0\0009\1\1\0019\1\2\1D\1\1\0\vgetcwd\afn\bvimÃ\2\1\0\f\0\19\1 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\17\0004\3\3\0006\4\0\0'\6\3\0B\4\2\0025\6\v\0006\a\0\0'\t\4\0B\a\2\0029\a\5\a6\t\6\0009\t\a\t9\t\b\t'\v\t\0B\t\2\0A\a\0\2'\b\n\0&\a\b\a=\a\f\0065\a\r\0=\a\14\0063\a\15\0=\a\16\6B\4\2\0?\4\0\0=\3\18\2B\0\2\1K\0\1\0\radapters\1\0\0\bcwd\0\benv\1\0\1\aCI\2\16jestCommand\1\0\1\19jestConfigFile\26custom.jest.config.ts\r --watch\n%:p:h\vexpand\afn\bvim\19getJestCommand\27neotest-jest.jest-util\17neotest-jest\nsetup\fneotest\frequire\3€€À™\4\0" },
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/neotest",
    url = "https://github.com/nvim-neotest/neotest"
  },
  ["neotest-jest"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/neotest-jest",
    url = "https://github.com/nvim-neotest/neotest-jest"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-projects"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/nvim-dap-projects",
    url = "https://github.com/ldelossa/nvim-dap-projects"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-context"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/nvim-treesitter-context",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-context"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["refactoring.nvim"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/refactoring.nvim",
    url = "https://github.com/theprimeagen/refactoring.nvim"
  },
  ["rose-pine"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0" },
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["trouble.nvim"] = {
    config = { "\27LJ\2\nC\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\nicons\1\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/trouble.nvim",
    url = "https://github.com/folke/trouble.nvim"
  },
  undotree = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["zen-mode.nvim"] = {
    loaded = true,
    path = "/home/theara/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: trouble.nvim
time([[Config for trouble.nvim]], true)
try_loadstring("\27LJ\2\nC\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\nicons\1\nsetup\ftrouble\frequire\0", "config", "trouble.nvim")
time([[Config for trouble.nvim]], false)
-- Config for: conform.nvim
time([[Config for conform.nvim]], true)
try_loadstring("\27LJ\2\n×\3\0\0\6\0\27\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0035\4\6\0=\4\a\0034\4\3\0005\5\b\0>\5\1\4=\4\t\0034\4\3\0005\5\n\0>\5\1\4=\4\v\0034\4\3\0005\5\f\0>\5\1\4=\4\r\0034\4\3\0005\5\14\0>\5\1\4=\4\15\3=\3\17\0025\3\18\0=\3\19\2B\0\2\0016\0\20\0009\0\21\0009\0\22\0005\2\23\0'\3\24\0'\4\25\0005\5\26\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2-<cmd>lua require('conform').format()<cr>\15<leader>mp\1\3\0\0\6n\6v\bset\vkeymap\bvim\19format_on_save\1\0\2\15timeout_ms\3ô\3\17lsp_fallback\2\21formatters_by_ft\1\0\0\tyaml\1\2\0\0\rprettier\tjson\1\2\0\0\rprettier\15typescript\1\2\0\0\rprettier\15javascript\1\2\0\0\rprettier\vpython\1\3\0\0\nisort\nblack\blua\1\0\0\1\2\0\0\vstylua\nsetup\fconform\frequire\0", "config", "conform.nvim")
time([[Config for conform.nvim]], false)
-- Config for: neotest
time([[Config for neotest]], true)
try_loadstring("\27LJ\2\n%\0\1\3\0\3\0\0046\1\0\0009\1\1\0019\1\2\1D\1\1\0\vgetcwd\afn\bvimÃ\2\1\0\f\0\19\1 6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\17\0004\3\3\0006\4\0\0'\6\3\0B\4\2\0025\6\v\0006\a\0\0'\t\4\0B\a\2\0029\a\5\a6\t\6\0009\t\a\t9\t\b\t'\v\t\0B\t\2\0A\a\0\2'\b\n\0&\a\b\a=\a\f\0065\a\r\0=\a\14\0063\a\15\0=\a\16\6B\4\2\0?\4\0\0=\3\18\2B\0\2\1K\0\1\0\radapters\1\0\0\bcwd\0\benv\1\0\1\aCI\2\16jestCommand\1\0\1\19jestConfigFile\26custom.jest.config.ts\r --watch\n%:p:h\vexpand\afn\bvim\19getJestCommand\27neotest-jest.jest-util\17neotest-jest\nsetup\fneotest\frequire\3€€À™\4\0", "config", "neotest")
time([[Config for neotest]], false)
-- Config for: rose-pine
time([[Config for rose-pine]], true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\26colorscheme rose-pine\bcmd\bvim\0", "config", "rose-pine")
time([[Config for rose-pine]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
