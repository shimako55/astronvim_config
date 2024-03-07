return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity
  -- color theme
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin" },
  -- extended increment/decrement
  { import = "astrocommunity.editing-support.dial-nvim" },
  -- split and join arguments
  { import = "astrocommunity.editing-support.mini-splitjoin" },
  -- copilot completion
  { import = "astrocommunity.completion.copilot-lua-cmp" },
  {
    "copilot.lua",
    opts = {
      filetypes = {
        yaml = true,
        -- markdown = false,
        -- help = false,
        gitcommit = true,
        -- gitrebase = false,
        -- hgcommit = false,
        -- svn = false,
        -- cvs = false,
        -- ["."] = false,
      },
      suggestion = {
        auto_trigger = true,
      },
    },
  },
  -- Hop is an EasyMotion-like plugin allowing you to jump anywhere in a document with as few keystrokes as possible
  { import = "astrocommunity.motion.hop-nvim" },
  -- mini-bracketed is go forward/backward with square brackets
  { import = "astrocommunity.motion.mini-bracketed" },
  -- surround selections, stylishly
  { import = "astrocommunity.motion.nvim-surround" },
  { import = "astrocommunity.editing-support.multicursors-nvim" },
  {
    "smoka7/multicursors.nvim",
    dependencies = {
      'smoka7/hydra.nvim',
    },
  },
  { import = "astrocommunity.color.vim-highlighter" },
  { import = "astrocommunity.git.diffview-nvim" },
}
