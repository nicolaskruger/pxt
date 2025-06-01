local pxt = {}

function pxt.mono_font()
	print("change font 💿")
	local aroba = "@"

	vim.api.nvim_set_hl(0, aroba, { bg = "#ff0000", fg = "#ffffff" })
	vim.fn.matchadd(aroba, aroba)

	vim.api.nvim_create_autocmd("BufEnter", {
		pattern = "*.pxt",
		callback = function()
			print("open pxt 🆗")
		end,
	})

	vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, {
		pattern = { "*.pxt" }, -- only for markdown and text files
		callback = function()
			local buf = vim.api.nvim_get_current_buf()
			local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)
			print("File content changed:")
			for _, line in ipairs(lines) do
				print(line)
			end
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
