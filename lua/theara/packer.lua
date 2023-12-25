-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.5',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  use({
      "folke/trouble.nvim",
      config = function()
          require("trouble").setup {
              icons = false,
              -- your configuration comes here
              -- or leave it empty to use the default settings
              -- refer to the configuration section below
          }
      end
  })

  use {
			'nvim-treesitter/nvim-treesitter',
			run = function()
				local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
				ts_update()
			end,}
  use("nvim-treesitter/playground")
  use("theprimeagen/harpoon")
  use("theprimeagen/refactoring.nvim")
  use("mbbill/undotree")
  use("tpope/vim-fugitive")
  use("nvim-treesitter/nvim-treesitter-context");

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  use("folke/zen-mode.nvim")
  use("github/copilot.vim")
  use("eandrju/cellular-automaton.nvim")
  use("laytan/cloak.nvim")

--   use({
--       'nvim-neotest/neotest',
--       requires = {
--           'nvim-neotest/neotest-jest',
--           "nvim-lua/plenary.nvim",
--           "antoinemadec/FixCursorHold.nvim"
--       },
--       config = function()
--           require('neotest').setup({
--               adapters = {
--                   require('neotest-jest')({
--                       jestCommand = require('neotest-jest.jest-util').getJestCommand(vim.fn.expand '%:p:h') .. ' --watch',
--                       jestConfigFile = "custom.jest.config.ts",
--                       env = { CI = true },
--                       cwd = function(path)
--                           return vim.fn.getcwd()
--                       end,
--                   }),
--               }
--           })
--       end
--   })

  use 'mfussenegger/nvim-dap'
  use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap"} }
  use 'ldelossa/nvim-dap-projects'
  use 'folke/neodev.nvim'
  use({
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
          formatters_by_ft = {
              lua = { "stylua" },
              -- Conform will run multiple formatters sequentially
              python = { "isort", "black" },
              -- Use a sub-list to run only the first available formatter
              javascript = { { "prettier" } },
              typescript = { { "prettier" } },
              json = { { "prettier" } },
              yaml = { { "prettier" } },
          },
          format_on_save = {
              -- These options will be passed to conform.format()
              timeout_ms = 500,
              lsp_fallback = true,
          },
      })

      vim.keymap.set({ "n", "v" }, "<leader>mp", "<cmd>lua require('conform').format()<cr>", { noremap = true, silent = true})
    end,
  })
end)
