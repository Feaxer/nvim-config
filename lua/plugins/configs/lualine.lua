local M = {}

local function lsp_progress()
    return "hello world"
end

M.setup = function()
    require("lualine").setup {
        options = {
            theme = "material",
            component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
        },
        sections = {
            lualine_a = { "mode" },
            lualine_b = { "filename", "branch" },
            lualine_c = { "fileformat", "diff", "diagnostics" },
            lualine_x = { lsp_progress },
            lualine_y = { "filetype", "progress" },
            lualine_z = { "location" },
        },
        inactive_sections = {
            lualine_a = { "filename" },
            lualine_b = {},
            lualine_c = {},
            lualine_x = {},
            lualine_y = {},
            lualine_z = { "location" },
        },
        tabline = {},
        extensions = {},
    }
end

return M
