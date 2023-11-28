local theme = require("monopai.theme")

local M = {}

function M.load()
	-- only needed to clear when not the default colorscheme
	if vim.g.colors_name then
		vim.cmd("hi clear")
	end

	vim.o.termguicolors = true
	vim.g.colors_name = "monopai"

	for group, colors in pairs(theme) do
		M.highlight(group, colors)
	end
end

function M.highlight(group, hl)
	-- group = ts.get(group)
	if not group then
		return
	end
	if hl.style then
		if type(hl.style) == "table" then
			hl = vim.tbl_extend("force", hl, hl.style)
		elseif hl.style:lower() ~= "none" then
			-- handle old string style definitions
			for s in string.gmatch(hl.style, "([^,]+)") do
				hl[s] = true
			end
		end
		hl.style = nil
	end
	vim.api.nvim_set_hl(0, group, hl)
end

return M
