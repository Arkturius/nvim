return {
	dir = "~/.config/nvim/lua/custom/plugins/sandbox.nvim",
	config = function()
		require("sandbox").setup()
	end
}
