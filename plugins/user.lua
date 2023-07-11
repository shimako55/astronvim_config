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
  -- {
  --   "smoka7/multicursors.nvim",
  --   dependencies = {
  --       'smoka7/hydra.nvim',
  --   },
  --   event = "VeryLazy",
  --   opts = {},
  --   keys = {
  --     '<Leader>m',
  --     '<cmd>MCstart<cr>',
  --     desc = 'Create a selection for word under the cursor',
  --   },
  -- },
}
