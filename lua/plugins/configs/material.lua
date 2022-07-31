local colors = require "material/colors"
local material = require "material"

local M = {}

M.setup = function()
    vim.g.material_style = "deep ocean"
    vim.cmd "colorscheme material"
    material.setup {
        custom_highlights = {
            Statement = { fg = colors.purple },
            TSType = { fg = colors.cyan },
            TSProperty = { fg = colors.fg },
            TSKeywordReturn = { fg = colors.purple },
        },
    }
end

return M
