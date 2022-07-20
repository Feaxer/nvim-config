local ls = require "luasnip"
local i = ls.insert_node
local s = ls.snippet
local t = ls.text_node
local f = ls.function_node

ls.add_snippets("all", {
    s("ternary", {
        -- equivalent to "${1:cond} ? ${2:then} : ${3:else}"
        i(1, "cond"),
        t " ? ",
        i(2, "then"),
        t " : ",
        i(3, "else"),
    }),
})

ls.add_snippets("all", {
    s({
        trig = "dater",
        namr = "Date",
        dscr = "Date in the form of YYYY-MM-DD",
    }, {
        f(function()
            return { os.date "%Y-%m-%d %H" }
        end, {}),
    }),
})
