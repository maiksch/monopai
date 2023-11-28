local c = {
	fg = "#FBF1C7",
	fg_2 = "#B5B5B5",
	bg = "#2D2A2E",
	bg_dark = "#19181a",
	white = "#FFFFFF",
	green = "#A9DC76",
	blue = "#7aa2f7",
	yellow = "#FFD866",
	orange = "#F59762",
	red = "#FF6188",
	purple = "#AB9DF2",
	gray = "#454545",
	lightgray = "#727272",
}

local styles = {
	functions = {},
	comments = { italic = true },
	keywords = { italic = true },
	variables = {},
}

return {
	-- editor
	ColorColumn = { bg = c.gray },           -- used for the columns set with 'colorcolumn'
	Cursor = { bg = c.fg, fg = c.bg_dark },             -- character under the cursor
	-- lCursor = { bg = "green" },              -- the character under the cursor when |language-mapping| is used (see 'guicursor')
	CursorLine = { bg = c.gray },            -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
	CursorLineNr = { fg = c.fg, bold = true, }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
	LineNr = { fg = c.lightgray },
	Directory = { fg = c.blue },
	DiagnosticError = { fg = c.red },

	-- diff for git etc.
	DiffAdd = { fg = c.green },              -- diff mode: Added line |diff.txt|
	DiffChange = { fg = c.yellow },          -- diff mode: Changed line |diff.txt|
	DiffDelete = { fg = c.red },             -- diff mode: Deleted line |diff.txt|

	Pmenu = { bg = c.bg_dark, fg = c.fg_2 }, -- Popup menu: normal item.
	PmenuSel = { fg = c.bg, bg = c.lightgray }, -- Popup menu: selected item.

	SignColumn = { bg = "NONE" },
	-- FoldColumn = { bg = "NONE" },
	-- CursorLineSign = { bg = "NONE" },
	-- SignColumnSB = { bg = "NONE" },
	-- Normal = { bg = "NONE" },

	-- vim internal
	Title = { fg = c.fg },
	Function = { fg = c.green, style = styles.functions },
	Comment = { fg = c.lightgray, style = styles.comments },
	String = { fg = c.yellow },
	Type = { fg = c.orange },
	Keyword = { fg = c.red, style = styles.keywords },
	Statement = { fg = c.red },
	Identifier = { fg = c.fg, style = styles.variables },
	Constant = { fg = c.purple },
	NonText = { fg = c.lightgray },

	-- treesitter
	["@tag"] = { fg = c.purple },
	["@tag.attribute"] = { fg = c.orange, style = { italic = true } },
	["@constant.builtin"] = { fg = c.purple },
	["@constructor"] = { fg = c.green },
	["@include"] = { fg = c.red },
	["@function.builtin"] = { fg = c.red, style = styles.keywords },
	["@punctuation"] = { fg = c.lightgray },
	["@punctuation.delimiter"] = { fg = c.lightgray },

	-- indent blankline
	IblIndent = { fg = c.gray, nocombine = true },
	IblScope = { fg = c.lightgray, nocombine = true },

	-- nvim-tree
	-- NvimTreeNormal = { fg = c.white, bg = c.bg },
	NvimTreeRootFolder = { fg = c.blue },
	NvimTreeExecFile = { fg = c.green },
	NvimTreeImageFile = { fg = c.green },
	NvimTreeSpecialFile = { fg = c.green },
	NvimTreeGitNew = { fg = c.green },
	NvimTreeGitModifiedFile = { fg = c.yellow },
	NvimTreeGitDeleted = { fg = c.red },
	NvimTreeFolderIcon = { fg = c.blue },
	-- NvimTreeFolderIcon = { fg = c.fg_2 },
}
