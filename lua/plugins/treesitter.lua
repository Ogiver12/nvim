return {
    {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',

	config = function()
	    require('nvim-treesitter').setup({
		install_dir = vim.fn.stdpath('data') .. '/site'
	    })

	    vim.api.nvim_create_autocmd('FileType', {
		pattern = { 'lua', 'c' },
		callback = function()
		    vim.treesitter.start()
		    vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		end,
		})
		require('nvim-treesitter').install { 'lua', 'c', }
	    end,
	},
    }
