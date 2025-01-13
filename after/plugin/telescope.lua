local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader><Up><Up>', builtin.find_files, { })
vim.keymap.set('n', '<leader><Up>g', builtin.git_files, { })

vim.keymap.set('n', '<leader><Up>f', function()
	builtin.grep_string(
		{ search = vim.fn.input("grep ? ") }
	);
end)

vim.keymap.set('n', '<leader><Up>d', function()
	builtin.live_grep(
		{ default_text = vim.fn.input("live grep ? ") }
	);
end)
