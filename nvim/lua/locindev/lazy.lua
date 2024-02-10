local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)
vim.g.skip_ts_context_commentstring_module = true
require("lazy").setup({
	{ import = "locindev.plugins" },
	{ import = "locindev.plugins.lsp" },
	{ "codota/tabnine-nvim", build = "./dl_binaries.sh" },
	{
		"barrett-ruth/live-server.nvim",
		build = "yarn global add live-server",
		config = true,
	},
}, {

	install = {
		colorscheme = { "tokyonight" },
	},
	checker = {
		enabled = true,
		notify = false,
	},
	change_detection = {
		notify = false,
	},
})
