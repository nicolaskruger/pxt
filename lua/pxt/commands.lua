local M = {}

function M.pxtHello()
	print("🐂 hello 🐂")
end

function M.pxtChangeFont()
	vim.o.guifont = "FiraCode Nerd Font:h14"
end

return M
