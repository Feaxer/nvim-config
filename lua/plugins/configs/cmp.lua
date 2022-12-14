local present, cmp = pcall(require, "cmp")

if not present then
    return
end

-- require("base46").load_highlight "cmp"

vim.opt.completeopt = "menuone,noselect"

local function border(hl_name)
    return {
        { "🭂", hl_name },
        { "█", hl_name },
        { "🭍", hl_name },
        { "█", hl_name },
        { "🭞", hl_name },
        { "█", hl_name },
        { "🭓", hl_name },
        { "█", hl_name },
    }
end

local cmp_window = require "cmp.utils.window"

cmp_window.info_ = cmp_window.info
cmp_window.info = function(self)
    local info = self:info_()
    info.scrollable = false
    return info
end

vim.cmd [[hi CmpBorder guifg=#1D202F]]
vim.cmd [[hi CmpPmenu guibg=#1D202F]]

local options = {
    window = {
        completion = {
            border = border "CmpBorder",
            winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
        },
        documentation = {
            winhighlight = "Normal:CmpPmenu,CursorLine:PmenuSel,Search:None",
            border = {
                { "🭂", "CmpBorder" },
                { "█", "CmpBorder" },
                { "🭍", "CmpBorder" },
                { "█", "CmpBorder" },
                { "🭞", "CmpBorder" },
                { "█", "CmpBorder" },
                { "🭓", "CmpBorder" },
                { "█", "CmpBorder" },
            },
        },
    },
    snippet = {
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    },
    formatting = {
        format = function(_, vim_item)
            local icons = require("ui.icons").lspkind
            vim_item.kind = string.format("%s %s", icons[vim_item.kind], vim_item.kind)
            vim_item.abbr = " " .. vim_item.abbr
            return vim_item
        end,
    },
    mapping = {
        ["<C-k>"] = cmp.mapping.select_prev_item(),
        ["<C-j>"] = cmp.mapping.select_next_item(),
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),
        ["<C-u>"] = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete {},
        ["<C-e>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
        },
        ["<CR>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Insert,
            select = true,
        },
        ["<Tab>"] = cmp.mapping(function(fallback)
            if require("luasnip").expand_or_jumpable() then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true), "")
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }),
        ["<S-Tab>"] = cmp.mapping(function(fallback)
            if require("luasnip").jumpable(-1) then
                vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
            else
                fallback()
            end
        end, {
            "i",
            "s",
        }),
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        -- { name = "buffer" },
        { name = "nvim_lua" },
        { name = "path" },
    },
}

-- check for any override
options = require("core.utils").load_override(options, "hrsh7th/nvim-cmp")

cmp.setup(options)
