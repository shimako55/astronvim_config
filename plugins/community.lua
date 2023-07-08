return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.editing-support.dial-nvim" },
  { import = "astrocommunity.editing-support.mini-splitjoin" },
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  {
	  "zbirenbaum/copilot.lua",
	  cmd = "Copilot",
	  event = "InsertEnter",
	  config = function()
	    require("copilot").setup({
	        suggestion = {
          auto_trigger = true,
        },
	    })
	  end,
  },
  { import = "astrocommunity.motion.hop-nvim" },
  {
    'phaazon/hop.nvim',
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end
  },
  { import = "astrocommunity.motion.mini-bracketed" },
  { 'echasnovski/mini.bracketed', version = false },
  { import = "astrocommunity.motion.nvim-surround" },
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
  },
  { import = "astrocommunity.motion.vim-matchup" },
  {
    "andymass/vim-matchup",
    setup = function()
      vim.g.matchup_matchparen_offscreen = { method = "popup" }
    end,
  },
  { import = "astrocommunity.indent.indent-blankline-nvim" },
  { 
    "lukas-reineke/indent-blankline.nvim",
	  config = function()
      vim.opt.list = true
      vim.opt.listchars:append "space:⋅"
      vim.opt.listchars:append "eol:↴"
      require("indent_blankline").setup {
        space_char_blankline = " ",
        show_current_context = true,
        show_current_context_start = true,
        show_end_of_line = true,
      }
    end,
  },
  {
    "m4xshen/hardtime.nvim",
    opts = {
      disable_mouse = false,
    },
  },
}

