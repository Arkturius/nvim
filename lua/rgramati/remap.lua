vim.keymap.set("n", "<leader><Down>", vim.cmd.Ex)

-- (Normal) Move a single line and indent it
vim.keymap.set("n", "J", "<s-v>:m '>+1<CR>gv=")
vim.keymap.set("n", "K", "<s-v>:m '<-2<CR>gv=")

-- (Visual) Move a bloc of lines, keeping it indented
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- (Normal) Change window focus
vim.keymap.set("n", "<s-Left>", "<C-w>h")
vim.keymap.set("n", "<s-Down>", "<C-w>j")
vim.keymap.set("n", "<s-Up>", "<C-w>k")
vim.keymap.set("n", "<s-Right>", "<C-w>l")

-- (Normal) Resize window
vim.keymap.set("n", "<c-Up>", ":resize -2<CR>")
vim.keymap.set("n", "<c-Down>", ":resize +2<CR>")
vim.keymap.set("n", "<c-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<c-Right>", ":vertical resize +2<CR>")
vim.keymap.set("n", "<c-f>", ":only<CR>")

-- (Normal & Visual) Yanking outside vim
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")

-- (Normal & Visual) Pasting from outside vim
vim.keymap.set("n", "<leader>p", "\"+p")

-- (Insert) Auto closing quotes
vim.keymap.set("i", "\"", "\"\"<Left>")
vim.keymap.set("i", "\'", "\'\'<Left>")

-- (Normal) Commenting/Uncommenting
vim.keymap.set("n", "<leader>.", "0:s/^/\\/\\/ /<CR>")
vim.keymap.set("n", "<leader>,", "0:s/^\\/\\/ //<CR>")

-- (Visual) Block commenting/uncommenting
vim.keymap.set("v", "<leader>.", ":s/^/\\/\\/ /<CR>gv")
vim.keymap.set("v", "<leader>,", ":s/^\\/\\/ //<CR>gv")
vim.keymap.set("n", "<Leader>m", "d/}<CR>x")

-- (Normal) Append to current word, Subtitute from input1 to input2, Subsitute in visual block
vim.keymap.set("n", "<leader>sa", [[:%s/\<<c-r><c-w>\>/<c-r><c-w>/g<Left><Left>]])
vim.keymap.set("n", "<leader>ss", function()
	local from = vim.fn.input("subtitute ? ")
	local to = vim.fn.input("with ? ")
	vim.api.nvim_feedkeys(":%s/" ..from.. "/" ..to.. "/g\r" , 'n', true)
end)
vim.keymap.set("v", "<leader>sv", function()
	local from = vim.fn.input("subtitute ? ")
	local to = vim.fn.input("with ? ")
	print(from)
	vim.api.nvim_feedkeys(":s/" ..from.. "/" ..to.. "/g\r" , 'v', true)
end)
