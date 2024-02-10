return {
	"akinsho/bufferline.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	version = "*",
	opts = {
		options = {
			-- mode = "buffers",
			mode = "tab",
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					-- highlight = "Directory",
					separator = true,
				},
			},
			-- separator_style = "thin",
			separator_style = "slant",
		},
	},
}
