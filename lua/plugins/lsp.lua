return {
  {
    'neovim/nvim-lspconfig',
  },
  {
    'mason-org/mason.nvim',
    opts = {}
  },
  {
    'mason-org/mason-lspconfig.nvim',
    opts = {
      ensure_installed = { "lua_ls", "clangd", "qmlls", "basedpyright", "cssls", "ts_ls", }
    },
  },
}
