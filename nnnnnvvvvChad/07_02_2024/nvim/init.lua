require "core"

local custom_init_path = vim.api.nvim_get_runtime_file("lua/custom/init.lua", false)[1]

if custom_init_path then
  dofile(custom_init_path)
end

require("core.utils").load_mappings()

local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

-- bootstrap lazy.nvim!
if not vim.loop.fs_stat(lazypath) then
  require("core.bootstrap").gen_chadrc_template()
  require("core.bootstrap").lazy(lazypath)
end

dofile(vim.g.base46_cache .. "defaults")
vim.opt.rtp:prepend(lazypath)
require "plugins"
require "nvim-tree"
require("ts_context_commentstring").setup {}
require("tabnine").setup {
  disable_auto_comment = true,
  accept_keymap = "<Tab>",
  dismiss_keymap = "<C-]>",
  debounce_ms = 800,
  suggestion_color = { gui = "#808080", cterm = 244 },
  exclude_filetypes = { "TelescopePrompt", "NvimTree" },
  log_file_path = nil, -- absolute path to Tabnine log file
}
require("ufo").setup()
require("inc_rename").setup()
vim.opt.cursorline = true
-- Specify the color for the cursorline
-- vim.cmd [[highlight CursorLine guibg=#B4B4B8 ctermbg=grey]]
-- Increase font size for the current line
vim.cmd [[autocmd CursorMoved,CursorMovedI * highlight CursorLine cterm=bold ctermbg=grey gui=bold guibg=#565f66 ]]

vim.cmd [[highlight Visual cterm=NONE guibg=#565f66 ctermbg=grey]]
