local pxt = {}
local api = require("pxt.pxt_api")

function pxt.set_up()
	vim.api.nvim_create_autocmd({ "TextChanged", "TextChangedI" }, {
		pattern = { "*.pxt" },
		callback = function()
			local buf = vim.api.nvim_get_current_buf()
			local lines = vim.api.nvim_buf_get_lines(buf, 0, -1, false)
			for _, line in ipairs(lines) do
				local var = api.pxt(line)
				if var ~= nil then
					print("key", var.key)
					print("color", var.color)
					vim.api.nvim_set_hl(0, var.key, { bg = var.color, fg = var.color })
					vim.fn.matchadd(var.key, var.color)
				end
			end
		end,
	})
end

return pxt
