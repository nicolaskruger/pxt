local pxt = {}

function pxt.monoFont()
	print("change font")
	vim.api.nvim_create_autocmd("BufEnter", {
		pattern = "*.pxt",
		callback = function()
			vim.o.guifont = "FiraCode Nerd Font:h14"
		end,
	})
end

function pxt.config()
	vim.api.nvim_create_user_command("pxtHello", function()
		require("pxt.commands").pxtHello()
	end, {})
end

return pxt
