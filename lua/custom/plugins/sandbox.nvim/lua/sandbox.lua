-- lua/custom/plugins/sandbox.lua

local M = {}

M.setup = function()
	print("sandbox setup")
end

M.twindow = function()

	local buf = vim.api.nvim_create_buf('nobl', 'true')

	local lines = vim.api.nvim_get_option('lines')
	local columns = vim.api.nvim_get_option('columns')

	local WIN = vim.api.nvim_open_win(buf, 'true',
	{
		relative = "editor",
		--row = (lines - height) / 2,
		--col = (columns - width) / 2,
		row = 2,
		col = columns - 2,
		height = lines - 4,
		width = (columns / 3) + 10,
		border = "rounded",
		anchor = "NE"
	})

	vim.api.nvim_set_option_value('filetype', 'terminal', {buf = buf})
	vim.fn.termopen(vim.o.shell)
end

return M
