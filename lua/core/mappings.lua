-- n, v, i, t = mode names

local function termcodes(str)
    return vim.api.nvim_replace_termcodes(str, true, true, true)
end

local M = {}

M.general = {

    i = {
        ["<C-b>"] = { "<ESC>^i", "論 beginning of line" },
        ["<C-e>"] = { "<End>", "壟 end of line" },

        ["<C-h>"] = { "<Left>", "  move left" },
        ["<C-l>"] = { "<Right>", " move right" },
        ["<C-j>"] = { "<Down>", " move down" },
        ["<C-k>"] = { "<Up>", " move up" },
    },

    n = {
        ["<ESC>"] = { "<cmd> noh <CR>", "  no highlight" },

        ["<C-h>"] = { "<C-w>h", " window left" },
        ["<C-l>"] = { "<C-w>l", " window right" },
        ["<C-j>"] = { "<C-w>j", " window down" },
        ["<C-k>"] = { "<C-w>k", " window up" },

        ["<C-s>"] = { "<cmd> w <CR>", "﬚  save file" },

        ["<leader>n"] = { "<cmd> set nu! <CR>", "   toggle line number" },
        ["<leader>rn"] = { "<cmd> set rnu! <CR>", "   toggle relative number" },
    },

    t = {
        ["<C-x>"] = { termcodes "<C-\\><C-N>", "   escape terminal mode" },
        ["<C-s>"] = { "<C-x><leader>x", "   escape terminal mode" },

        ["<C-h>"] = { "<C-x><C-w>h", " window left" },
        ["<C-l>"] = { "<C-x><C-w>l", " window right" },
        ["<C-j>"] = { "<C-x><C-w>j", " window down" },
        ["<C-k>"] = { "<C-x><C-w>k", " window up" },
    },
}

-- stylua: ignore start
M.bufferline = {
    n = {
        ["<TAB>"] = { "<cmd> BufferLineCycleNext <CR>", "  cycle next buffer" },
        ["<S-Tab>"] = { "<cmd> BufferLineCyclePrev <CR>", "  cycle prev buffer" },

        -- close buffer + hide terminal buffer
        ["<leader>x"] = { function() require("core.utils").close_buffer() end, "   close buffer", },
    },
}

M.comment = {
    n = {
        ["<leader>/"] = { function() require("Comment.api").toggle_current_linewise() end, "蘒  toggle comment", },
    },
    v = {
        ["<leader>/"] = { "<ESC><cmd>lua require('Comment.api').toggle_linewise_op(vim.fn.visualmode())<CR>", "蘒  toggle comment", },
    },
}

M.lspconfig = {
    n = {
        ["gD"] = { vim.lsp.buf.declaration, "   lsp declaration" },
        ["gd"] = { vim.lsp.buf.definition, "   lsp definition" },
        ["K"] = { vim.lsp.buf.hover, "   lsp hover" },
        ["gi"] = { vim.lsp.buf.implementation, "   lsp implementation" },
        ["<leader>ls"] = { vim.lsp.buf.signature_help, "   lsp signature_help" },
        ["<leader>D"] = { vim.lsp.buf.type_definition, "   lsp definition type" },
        ["<leader>ca"] = { vim.lsp.buf.code_action, "   lsp code_action" },
        ["gr"] = { vim.lsp.buf.references, "   lsp references" },
        ["<leader>f"] = { vim.diagnostic.open_float, "   floating diagnostic" },
        ["[d"] = { vim.diagnostic.goto_prev, "   goto prev" },
        ["d]"] = { vim.diagnostic.goto_next, "   goto_next" },
        -- ["<leader>q"] = { vim.diagnostic.setloclist, "   diagnostic setloclist" },
        ["<leader>fm"] = { vim.lsp.buf.formatting, "   lsp formatting" },
        ["<leader>wa"] = { vim.lsp.buf.add_workspace_folder, "   add workspace folder" },
        ["<leader>wr"] = { vim.lsp.buf.remove_workspace_folder, "   remove workspace folder" },
        ["<leader>wl"] = { function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end, "   list workspace folders", },
    },
}

M.nvimtree = {
    n = {
        ["<C-n>"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
        ["<leader>e"] = { "<cmd> NvimTreeFocus <CR>", "   focus nvimtree" },
    },
}

M.telescope = {
    n = {
        -- find
        ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "  find files" },
        ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "  find all" },
        ["<leader>fw"] = { "<cmd> Telescope live_grep <CR>", "   live grep" },
        ["<leader>fb"] = { "<cmd> Telescope buffers <CR>", "  find buffers" },
        ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "  help page" },
        ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "   find oldfiles" },
        ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "   show keys" },
        ["<leader>cm"] = { "<cmd> Telescope git_commits <CR>", "   git commits" },
        ["<leader>gt"] = { "<cmd> Telescope git_status <CR>", "  git status" },
        ["<leader>pt"] = { "<cmd> Telescope terms <CR>", "   pick hidden term" },
    },
}

local nvterm = require "nvterm.terminal"
M.nvterm = {
    t = {
        ["<A-i>"] = { function() nvterm.toggle "float" end, "   toggle floating term", },
        ["<A-h>"] = { function() nvterm.toggle "horizontal" end, "   toggle horizontal term", },
        ["<A-v>"] = { function() nvterm.toggle "vertical" end, "   toggle vertical term", },
    },

    n = {
        ["<A-i>"] = { function() nvterm.toggle "float" end, "   toggle floating term", },
        ["<A-h>"] = { function() nvterm.toggle "horizontal" end, "   toggle horizontal term", },
        ["<A-v>"] = { function() nvterm.toggle "vertical" end, "   toggle vertical term", },
        ["<leader>h"] = { function() nvterm.new "horizontal" end, "   new horizontal term", },
        ["<leader>v"] = { function() nvterm.new "vertical" end, "   new vertical term", },
    },
}

M.whichkey = {
    n = {
        ["<leader>wK"] = { function() vim.cmd "WhichKey" end, "   which-key all keymaps", },
    },
}

M.blankline = {
    n = {
        ["<leader>bc"] = {
            function()
                local ok, start = require("indent_blankline.utils").get_current_context(
                    vim.g.indent_blankline_context_patterns,
                    vim.g.indent_blankline_use_treesitter_scope
                )

                if ok then
                    vim.api.nvim_win_set_cursor(vim.api.nvim_get_current_win(), { start, 0 })
                    vim.cmd [[normal! _]]
                end
            end,

            "  Jump to current_context",
        },
    },
}
-- stylua: ignore end

return M
