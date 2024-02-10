require("locindev.core")
require("locindev.lazy")
require("tabnine").setup({
	disable_auto_comment = true,
	accept_keymap = "<Tab>",
	dismiss_keymap = "<C-]>",
	debounce_ms = 800,
	suggestion_color = { gui = "#808080", cterm = 244 },
	exclude_filetypes = { "TelescopePrompt", "NvimTree" },
	log_file_path = nil, -- absolute path to Tabnine log file
})
-- require("lspconfig").solidity = {
-- 	cmd = { "solidity-ls", "-s" },
-- 	filetypes = { "solidity" },
-- 	settings = {
-- 		solidity = {
-- 			solidityVersion = "0.8.13",
-- 		},
-- 	},
-- }
-- local lspconfig = require("lspconfig")
-- local configs = require("lspconfig.configs")
--
-- configs.solidity = {
-- 	default_config = {
-- 		cmd = { "nomicfoundation-solidity-language-server", "--stdio" },
-- 		filetypes = { "solidity" },
-- 		root_dir = lspconfig.util.find_git_ancestor,
-- 		single_file_support = true,
-- 	},
-- }

vim.opt.spell = true
vim.opt.spelllang = "en_us"
vim.opt.wrap = true
require("symbols-outline").setup()
require("goto-preview").setup({})
require("toggleterm").setup({
	size = 50,
	open_mapping = [[<c-\>]],
	hide_numbers = true,
	shade_filetypes = {},
	shading_terminals = false,
	shading_factor = 2,
	start_in_insert = true,
	insert_mappings = true,
	persist_size = true,
	direction = "float",
	close_on_exit = true,
	shell = vim.o.shell,
	float_opts = {
		border = "curved",
		winblend = 0,
		highlights = {
			border = "Normal",
			background = "Normal",
		},
	},
})

-- vim.opt.termguicolors = true
-- require("ts_context_commentstring").setup({})
-- require("nvim-treesitter.configs").setup({
-- 	context_commentstring = {
-- 		enable = true,
-- 		languages = {
-- 			javascript = {
-- 				__default = "// %s",
-- 				jsx_element = "{/* %s */}",
-- 				jsx_fragment = "{/* %s */}",
-- 				jsx_attribute = "// %s",
-- 				comment = "// %s",
-- 			},
-- 		},
-- 	},
-- })
-- Define custom folding function
-- Cho phép chuột cho phép resize pane bằng cách kéo các đường phân chia.
-- nnoremap <S-Left>  :vertical resize +5<CR>
-- nnoremap <S-Right> :vertical resize -5<CR>
-- nnoremap <S-Up>    :resize -5<CR>
-- nnoremap <S-Down>  :resize +5<CR>
