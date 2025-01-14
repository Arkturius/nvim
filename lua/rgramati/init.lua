require("rgramati.set")
require("rgramati.remap")

require("rgramati.lazy").setup()

vim.api.nvim_create_autocmd('TermOpen', {
	group = vim.api.nvim_create_augroup("sandbox-termopen", { clear = true }),
	callback = function()
		vim.opt.nu = false
		vim.opt.rnu = false
		vim.cmd.startinsert()
	end
})

vim.keymap.set('n', '<Leader>t', function()
	require("sandbox").twindow()
end)

vim.keymap.set('t', '<Leader>t', [[<C-\><C-n>:q<CR>]], { noremap = true, silent = true })
