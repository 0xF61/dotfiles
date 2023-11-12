lvim.plugins = {
  -- :shrug:
  'yazeed1s/minimal.nvim',
  -- Traditional git experience
  'tpope/vim-fugitive',
  'vimwiki/vimwiki',
  -- DB connection
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
  }
}

-- local configs = require 'lspconfig.configs'
-- if not configs.ruff_lsp then
--   configs.ruff_lsp = {
--     default_config = {
--       cmd = { 'ruff-lsp' },
--       filetypes = { 'python' },
--       root_dir = require('lspconfig').util.find_git_ancestor,
--       init_options = {
--         settings = {
--           args = {}
--         }
--       }
--     }
--   }
-- end
-- require('lspconfig').ruff_lsp.setup {}
-- require("lvim.lsp.manager").setup("ruff_lsp")

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
lvim.format_on_save.enabled = true

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
