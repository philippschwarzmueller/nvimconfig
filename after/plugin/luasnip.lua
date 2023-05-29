local ls = require("luasnip")

local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

local date = function() return {os.date('%Y-%m-%d')} end

ls.add_snippets(nil, {
	all = {
		snip({
			trig = "date",
			namr = "Date",
			dscr = "Date in the form of YYYY-MM-DD",
		}, {
			func(date, {}),
		}),
	},
})

local ocf = function() return {"class NewClass {", " public:", "  NewClass();" ,"  ~NewClass();", "};"} end

ls.add_snippets(nil, {
	all = {
		snip({
			trig = "ocf",
			namr = "Orthodox Canonical class",
			dscr = "Adds Orthodox Canonical class definition",
		}, {
			func(ocf, {}),
		}),
	},
})

--local function get_classname(args, parent, user_args)
--	return ' ' .. args[1][1] .. user_args ' '
--end
--
--ls.add_snippets(nil, {
--	all = {
--		snip({
--			trig = "ocf-og",
--			name = "Orthodox Canonical class",
--			dscr = "Adds Orthodox Canonical class definition",
--		}, {
--			text 'class ', func(get_classname, {1}), insert(1), text ' {', text ' public:', insert(1), insert(1), text '};'
--		}),
--	},
--})
