local pxt = {}

function pxt.mono_font()
	print("change font :ba")
	vim.api.nvim_set_hl(0, "Normal", { bg = "#FFFFFF" })
	vim.o.guifont = "Iosevka Fixed:h12"
	vim.api.nvim_create_autocmd("BufEnter", {
		pattern = "*.pxt",
		callback = function()
			vim.o.guifont = "FiraCode Nerd Font:h14"
		end,
	})
end

function pxt.set_up()
	vim.api.nvim_create_user_command("PxtHello", function()
		pxt.mono_font()
	end, {})
end

function pxt.hello()
	print("🍵 hello 👽")
end
return pxt
