require'nvim-treesitter.configs'.setup {

	ensure_installed = { "c", "python", "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	auto_install = true,

	-- List of parsers to ignore installing (or "all")
	ignore_install = { "javascript" },

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
}
