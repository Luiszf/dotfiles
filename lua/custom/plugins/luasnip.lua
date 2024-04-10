
local ls = require("luasnip")

ls.config.setup {
	history = true,
	updateevents = "TextChanged, TextChangedI",
	enable_autosnippets = true
}

local s = ls.s
local fmt = require("luasnip.extras.fmt").fmt
local extras = require("luasnip.extras")
local i = ls.insert_node
local t = ls.text_node
local rep = extras.rep


ls.add_snippets("lua", {
	s("<>", {
		t("<"), i(1), t(">"),i(2),t"</", rep(1), t(">")
})
	}
)

return {}
