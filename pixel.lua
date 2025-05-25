-- ~/.config/nvim/lua/plugins/specs/myplugin.lua
return {
	dir = "/home/nkruger/github/pxt/pixel.lua", -- Local plugin
	lazy = true,
	cmd = { "SayHello" }, -- Only loads on :SayHello
	config = function()
		vim.api.nvim_create_user_command("SayHello", function()
			require("myplugin").say_hello()
		end, {})
	end,
}
