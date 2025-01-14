-- lua/custom/plugins/sandbox.lua

local M = {}

M.setup = function()
	print("sandbox setup")
end

M.twindow = function()

	local buf = vim.api.nvim_create_buf('nobl', 'true')

	local lines = vim.api.nvim_get_option('lines')
	local columns = vim.api.nvim_get_option('columns')

	local height = math.floor(lines * 0.9)
	local width = math.floor(columns * 0.9)

	local WIN = vim.api.nvim_open_win(buf, 'true',
	{
		relative = "editor",
		row = (lines - height) / 2 - 1,
		col = (columns - width) / 2,
		height = height,
		width = width,
		border = "rounded",
	})

	vim.api.nvim_set_option_value('filetype', 'terminal', {buf = buf})
	vim.fn.termopen(vim.o.shell)

end

return M
