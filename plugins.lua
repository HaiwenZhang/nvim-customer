local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      -- format & linting
      {
        "jose-elias-alvarez/null-ls.nvim",
        opts = function()
          return require "custom.configs.null-ls"
        end,
      },
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },

  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },
  {
    "TimUntersberger/neogit",
    lazy = false,
    config = function()
      local neogit = require('neogit')
      neogit.setup {}
    end,
  },
  {
    "phaazon/hop.nvim",
    lazy = false,
    config = function()
      require("hop").setup({
        keys = 'etovxqpdygfblzhckisuran',
        quit_key = '<SPC>',
      })
    end,
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function()
      vim.g.rustfmt_autosave = 1
    end
  },
  -- {
    -- "simrat39/rust-tools.nvim",
    -- ft = "rust",
    -- dependencies = "neovim/nvim-lspconfig",
    -- opts = function()
      -- return require "custom.configs.rust-tools"
    -- end,
    -- config = function (_, opts)
      -- require('rust-tools').setup(opts)
    -- end
  -- }
}

return plugins
