return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- Show function signature when you type
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function()
      require("lsp_signature").setup()
    end,
  },
  -- git signs
  {
    "lewis6991/gitsigns.nvim",
    event = "BufRead",
    config = function()
      require("gitsigns").setup({
        current_line_blame = true,
      })
    end,
  },
  -- test my plugin
  {
    "shimako55/jumpref.nvim",
    event = "VimEnter",
    config = function()
      require('jumpref').setup()
    end,
  },
  -- indent line
  { 
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
      require("ibl").setup()
    end,
  },
}
