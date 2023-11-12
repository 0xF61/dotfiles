lvim.plugins = {
  -- :shrug:
  'yazeed1s/minimal.nvim',
  -- Traditional git experience
  'tpope/vim-fugitive',
  'vimwiki/vimwiki',
  -- DB connection
  'tpope/vim-dadbod',
  'kristijanhusak/vim-dadbod-ui',
  dependencies = {
    { 'tpope/vim-dadbod',                     lazy = true },
    { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
  },
  cmd = {
    'DBUI',
    'DBUIToggle',
    'DBUIAddConnection',
    'DBUIFindBuffer',
  },
  init = function()
    -- Your DBUI configuration
    vim.g.db_ui_use_nerd_fonts = 1
  end,
  -- vim-go
  { 'fatih/vim-go', build = ':GoInstallBinaries', },
  -- Undo Tree
  {
    'nvim-telescope/telescope.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'debugloop/telescope-undo.nvim',
    },
  },
  -- LSP Signature in function
  {
    'ray-x/lsp_signature.nvim',
    event = 'BufRead',
    config = function() require 'lsp_signature'.on_attach() end,
  },
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    }
  }
}

vim.opt.rtp:append("/opt/homebrew/opt/fzf")

local configs = require 'lspconfig.configs'
if not configs.ruff_lsp then
  configs.ruff_lsp = {
    default_config = {
      cmd = { 'ruff-lsp' },
      filetypes = { 'python' },
      root_dir = require('lspconfig').util.find_git_ancestor,
      init_options = {
        settings = {
          args = {}
        }
      }
    }
  }
end
require('lspconfig').ruff_lsp.setup {
  on_attach = on_attach,
}

require("lvim.lsp.manager").setup("ruff_lsp")
require("lvim.lsp.null-ls.linters").setup {
  {
    name = "semgrep",
    filetypes = {
      "python",
      "vue"
    }
  },
}

lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "go",
  "json",
  "lua",
  "python",
  "yaml"
}

lvim.colorscheme = 'minimal-base16'
vim.opt.guicursor = 'a:ver100-blinkon0'
-- lvim.format_on_save.enabled = true

--
-- Configure DAP
lvim.builtin.dap.active = true

local dap = require('dap')
dap.adapters.delve = {
  type = 'server',
  port = '${port}',
  executable = {
    command = 'dlv',
    args = { 'dap', '-l', '127.0.0.1:${port}' },
  }
}

-- https://github.com/go-delve/delve/blob/master/Documentation/usage/dlv_dap.md
dap.configurations.go = {
  {
    type = "delve",
    name = "Debug",
    request = "launch",
    program = "."
  }
}

local autocmd = vim.api.nvim_create_autocmd
--
-- Make comments more readable
autocmd("FileType", {
  pattern = "*",
  callback = function()
    vim.cmd 'highlight Comment guifg=darkyellow'
  end,
})

--
-- Remove whitespace on save
autocmd('BufWritePre', {
  pattern = '',
  command = ':%s/\\s\\+$//e'
})
