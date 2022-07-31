local M = {}

M.setup = function()
    -- local hsl = require("lush").hsl
    -- local _c = hsl("#ff0000").hex()
    -- print(vim.inspect(_c))

    require("colorbuddy").colorscheme "onebuddy"
    local Color, colors, Group, groups, styles = require("colorbuddy").setup()
    Color.new("mono_1", "#abb2bf")
    Color.new("mono_2", "#828997")
    Color.new("mono_3", "#5c6370")
    Color.new("mono_4", "#4b5263")
    Color.new("hue_1", "#55D1B4")
    Color.new("hue_2", "#61afef")
    Color.new("hue_3", "#c678dd")
    Color.new("hue_4", "#98c379")
    Color.new("hue_5", "#e06c75")
    Color.new("hue_5_2", "#be5046")
    Color.new("hue_6", "#d19a66")
    Color.new("hue_6_2", "#e5c07b")
    Color.new("syntax_bg", "#282c34")
    Color.new("syntax_gutter", "#636d83")
    Color.new("syntax_cursor", "#20242B")
    Color.new("syntax_accent", "#528bff")
    Color.new("vertsplit", "#181a1f")
    Color.new("special_grey", "#3b4048")
    Color.new("visual_grey", "#3e4452")
    Color.new("pmenu", "#333841")
    Color.new("Red", "#e88388")
    Color.new("DarkRed", "#e06c75")
    Color.new("Blue", "#61afef")
    Color.new("DarkBlue", "#528bff")
    Color.new("Green", "#98c379")
    Color.new("DarkGreen", "#50a14f")
    Color.new("Orange", "#d19a66")
    Color.new("DarkOrange", "#c18401")
    Color.new("Yellow", "#e5c07b")
    Color.new("DarkYellow", "#986801")
    Color.new("Purple", "#a626a4")
    Color.new("Violet", "#b294bb")
    Color.new("Magenta", "#ff80ff")
    Color.new("DarkMagenta", "#a626a4")
    Color.new("Black", "#333841")
    Color.new("Grey", "#636d83")
    Color.new("White", "#f2e5bc")
    Color.new("Cyan", "#8abeb7")
    Color.new("DarkCyan", "#80a0ff")
    Color.new("Aqua", "#8ec07c")
    Color.new("pink", "#d291e4")

    Group.new("TSKeywordFunction", colors.pink, nil)
    Group.new("TSFunction", colors.Blue, nil)
    Group.new("TSConstructor", colors.DarkCyan, nil)
    Group.new("TSVariable", colors.mono_1, nil)
    Group.new("TSParameter", colors.mono_1, nil)
    Group.new("TSInclude", colors.Red, nil)
    Group.new("TSType", colors.DarkCyan, nil)
    Group.new("TSPunctBracket", colors.mono_3, nil)
    Group.new("TSPunctDelimiter", colors.mono_3, nil)
    Group.new("TSPunctSpecial", colors.mono_3, nil)
end

M.setup()

return M