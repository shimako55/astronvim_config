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
  -- indent-blankline is adds indentation guides to all lines (including empty lines)
  { import = "astrocommunity.indent.indent-blankline-nvim" },
  {
    "indent-blankline.nvim",
    config = function()
      vim.opt.list = true
      vim.opt.listchars:append "space:⋅"
      vim.opt.listchars:append "eol:↴"
      vim.opt.listchars:append "tab:▷⋅"

      vim.g.indent_blankline_buftype_exclude = { "nofile", "terminal" }
      vim.g.indent_blankline_filetype_exclude = {
        "help",
        "startify",
        "aerial",
        "alpha",
        "dashboard",
        "lazy",
        "neogitstatus",
        "NvimTree",
        "neo-tree",
        "Trouble",
      }
      vim.g.indent_blankline_context_patterns = {
        "class",
        "return",
        "function",
        "method",
        "^if",
        "^while",
        "jsx_element",
        "^for",
        "^object",
        "^table",
        "block",
        "arguments",
        "if_statement",
        "else_clause",
        "jsx_element",
        "jsx_self_closing_element",
        "try_statement",
        "catch_clause",
        "import_statement",
        "operation_type",
      }
      require("indent_blankline").setup {
        space_char_blankline = " ",
        show_current_context = true,
        show_end_of_line = true,
        -- show_current_context_start = true,
      }
    end,
  },
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
