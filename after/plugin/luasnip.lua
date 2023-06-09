local ls = require("luasnip")

local snip = ls.snippet
local node = ls.snippet_node
local text = ls.text_node
local insert = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt
local rep = require("luasnip.extras").rep

local filename = function() return {vim.fn.expand('%:t:r')} end
local include_name = function() return {string.upper(vim.fn.expand('%:t:r')) .. "_HPP_"} end

ls.add_snippets(nil, {
	all = {
		snip({
			trig = "occ",
			name = "Orthodox Canonical Class",
			dscr = "Adds Orthodox Canonical Class with placeholders",
		},
		fmt("#ifndef <>\
#define <>\
\
class <> { \
 public:\
  <>();\
  ~<>();\
  <>(const <>& obj);\
  <>& operator=(const <>& obj);\
\
 private:\
  <>\
};\
\
#endif  // <>", {
		func(include_name),
		func(include_name),
		func(filename),
		func(filename),
		func(filename),
		func(filename),
		func(filename),
		func(filename),
		func(filename),
		insert(0),
		func(include_name),
	},
	{
		delimiters = "<>"
	})
	)},
})

ls.add_snippets(nil, {
	all = {
		snip({
			trig = "iiostream",
			name = "iostream include",
			dscr = "add #include for iostream",
		},
		text "#include <iostream>"
		)}
	})

ls.add_snippets(nil, {
	all = {
		snip({
			trig = "istring",
			name = "string include",
			dscr = "add #include for string",
		},
		text "#include <string>"
		)}
	})

ls.add_snippets("cpp", {
	snip({
		trig = "sout",
		name = "printstream",
		dscr = "add std::cout << insert(0) << std::endl;",
	},
		fmt("std::cout << \"{}\" << std::endl;",
		{insert(0)},{})
	)
})
