return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional, but recommended
    },

    lazy = false, -- neo-tree will lazily load itself

    config = function()
        require('neo-tree').setup({
	    vim.keymap.set('n', '<Leader>n', ':Neotree filesystem reveal toggle left<CR>'),

	    filesystem = {
		    filtered_items = {
			visible = true,
			hide_dotfiles = false,
			hide_gitignored = true,
		    },
		},

	})

    end,
  },
}
