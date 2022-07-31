-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/feaxer/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/feaxer/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/feaxer/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/feaxer/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/feaxer/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["Comment.nvim"] = {
    after_files = { "/home/feaxer/.local/share/nvim/site/pack/packer/opt/Comment.nvim/after/plugin/Comment.lua" },
    config = { "\27LJ\2\nF\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\fcomment\27plugins.configs.others\frequire\0" },
    keys = { { "", "gc" }, { "", "gb" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  LuaSnip = {
    after = { "cmp_luasnip" },
    config = { "\27LJ\2\nF\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\fluasnip\27plugins.configs.others\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip",
    wants = { "friendly-snippets" }
  },
  ["aerial.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vaerial\frequire\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/aerial.nvim",
    url = "https://github.com/stevearc/aerial.nvim"
  },
  ["bufferline.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins.configs.bufferline\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/bufferline.nvim",
    url = "https://github.com/akinsho/bufferline.nvim"
  },
  ["cmp-buffer"] = {
    after = { "cmp-path" },
    after_files = { "/home/feaxer/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["cmp-nvim-lsp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    after = { "cmp-buffer" },
    after_files = { "/home/feaxer/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["cmp-nvim-lua"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    after = { "cmp-nvim-lsp" },
    after_files = { "/home/feaxer/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {
      cmp_luasnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/home/feaxer/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["cmp-buffer"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    after = { "cmp-nvim-lua" },
    after_files = { "/home/feaxer/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {
      LuaSnip = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/colorbuddy.vim",
    url = "https://github.com/tjdevries/colorbuddy.vim"
  },
  extensions = {
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/extensions",
    url = "https://github.com/NvChad/extensions"
  },
  ["friendly-snippets"] = {
    after = { "nvim-cmp" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  gatsby = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/gatsby",
    url = "/home/feaxer/.config/nvim/themes/gatsby"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\rgitsigns\27plugins.configs.others\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["hop.nvim"] = {
    config = { "\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/hop.nvim",
    url = "https://github.com/phaazon/hop.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14blankline\27plugins.configs.others\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["jaq-nvim"] = {
    config = { "\27LJ\2\né\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\tcmds\1\0\0\rexternal\1\0\a\tvala\23valac --pkg gtk4 %\trust\14cargo run\nswift\14swift run\vpytohn\rpython %\15javascript\14bun run %\blua\nlua %\15typescript\14bun run %\1\0\1\fdefault\tbang\nsetup\rjaq-nvim\frequire\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/jaq-nvim",
    url = "https://github.com/is0n/jaq-nvim"
  },
  ["leap.nvim"] = {
    config = { "\27LJ\2\n†\1\0\0\3\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0B\0\1\1K\0\1\0\24set_default_keymaps\1\0\2\19case_sensitive\1\24highlight_unlabeled\2\nsetup\tleap\frequire\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/leap.nvim",
    url = "https://github.com/ggandor/leap.nvim"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n\0\2\6\0\5\0\r'\2\1\0=\2\0\0'\2\1\0=\2\2\0\18\4\0\0009\2\3\0\18\5\1\0B\2\3\1\18\4\0\0009\2\4\0B\2\2\0019\2\0\0L\2\2\0\29apply_section_separators\21apply_highlights\22applied_separator\5\vstatusƒ\3\0\1\18\2\17\2C6\1\0\0\18\3\0\0B\1\2\4H\4<€\18\b\4\0009\6\1\4)\t\t\0)\n\n\0B\6\4\2'\a\2\0\0\6\a\0X\6\2€+\6\1\0X\a\1€+\6\2\0)\a\1\0\6\4\3\0X\b\3€\21\b\5\0\14\0\b\0X\t\2€\21\b\5\0\23\b\0\b)\t\1\0M\a\17€6\v\4\0009\v\5\v\18\r\5\0\24\14\1\n5\15\n\0-\16\0\0>\16\1\0155\16\a\0-\17\1\0009\17\6\17=\17\b\16-\17\1\0009\17\t\17=\17\t\16=\16\v\15B\v\4\1O\aï6\a\f\0\18\t\5\0B\a\2\4X\n\16€6\f\r\0\18\14\v\0B\f\2\2\6\f\4\0X\f\4€4\f\3\0>\v\1\f\18\v\f\0<\v\n\5\15\0\6\0X\f\3€5\f\15\0\14\0\f\0X\r\1€5\f\16\0=\f\14\vE\n\3\3R\nîF\4\3\3R\4ÂL\0\2\0\2À\0À\1\0\1\tleft\bî‚º\1\0\1\nright\bî‚¸\14separator\ttype\vipairs\ncolor\1\0\0\abg\afg\1\0\0\nwhite\vinsert\ntable\14lualine_z\6x\bsub\npairs\2\4Í\1\0\0\b\0\r\1\0316\0\0\0009\0\1\0009\0\2\0\t\0\0\0X\0\2€'\0\3\0L\0\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0B\0\2\2\15\0\0\0X\1\2€\a\0\3\0X\1\2€'\1\3\0L\1\2\0006\1\0\0009\1\4\0019\1\a\0015\3\b\0B\1\2\2\18\2\0\0'\3\t\0009\4\n\1'\5\6\0009\6\v\1'\a\f\0&\2\a\2L\2\2\0\6)\ntotal\fcurrent\6(\1\0\1\rmaxcount\3N\16searchcount\6/\vgetreg\afn\5\rhlsearch\6v\bvim\0ˆ\1\0\0\1\0\b\0\0226\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\3€'\0\3\0L\0\2\0X\0\f€6\0\0\0009\0\1\0009\0\4\0\n\0\1\0X\0\5€6\0\0\0009\0\1\0009\0\5\0\v\0\2\0X\0\2€'\0\6\0L\0\2\0'\0\a\0L\0\2\0\5\6-\rreadonly\15modifiable\6+\rmodified\abo\bvim,\0\0\1\0\3\0\0046\0\0\0009\0\1\0009\0\2\0L\0\2\0\18previewwindow\awo\bvim'\0\0\1\0\3\0\0046\0\0\0009\0\1\0009\0\2\0L\0\2\0\rreadonly\abo\bvimC\0\0\1\0\4\0\t6\0\0\0009\0\1\0009\0\2\0\6\0\3\0X\0\2€+\0\1\0X\1\1€+\0\2\0L\0\2\0\rquickfix\fbuftype\abo\bvimÚ\t\1\0\17\0W\0–\0016\0\0\0'\2\1\0B\0\2\0025\1\18\0005\2\6\0005\3\3\0009\4\2\0=\4\4\0039\4\5\0=\4\2\3=\3\a\0025\3\t\0009\4\b\0=\4\4\0039\4\n\0=\4\2\3=\3\v\0025\3\r\0009\4\f\0=\4\4\0039\4\2\0=\4\2\3=\3\14\0025\3\15\0009\4\b\0=\4\4\0039\4\16\0=\4\2\3=\3\17\2=\2\19\0015\2\22\0005\3\20\0009\4\f\0=\4\4\0039\4\21\0=\4\2\3=\3\a\2=\2\23\0015\2\26\0005\3\24\0009\4\f\0=\4\4\0039\4\25\0=\4\2\3=\3\a\2=\2\27\0015\2\30\0005\3\28\0009\4\f\0=\4\4\0039\4\29\0=\4\2\3=\3\a\2=\2\31\0016\2\0\0'\4 \0B\2\2\2\18\4\2\0009\2!\2B\2\2\0023\3#\0=\3\"\0023\3$\0003\4%\0003\5&\0006\6\0\0'\b'\0B\6\2\0029\6(\0065\b-\0005\t)\0=\1*\t5\n+\0=\n,\t=\t.\b\18\t\3\0005\v0\0005\f/\0=\f1\v5\f2\0005\r3\0005\0144\0=\0145\r5\0146\0=\0147\r5\0149\0005\0158\0009\16\29\0=\16\2\0159\16\2\0=\16\4\15=\15:\14=\14;\r>\r\3\f5\r<\0005\14=\0=\0145\r5\14>\0=\0147\r5\14@\0005\15?\0009\16\25\0=\16\2\0159\16\2\0=\16\4\15=\15A\14=\14;\r>\r\4\f5\rB\0>\r\5\f5\rD\0>\5\1\r5\14C\0009\15\29\0=\15\2\14=\14E\r>\r\6\f5\rF\0003\14G\0=\14H\r>\r\a\f5\rI\0003\14J\0=\14H\r>\r\b\f5\rK\0003\14L\0=\14H\r>\r\t\f=\fM\v4\f\0\0=\fN\v4\f\0\0=\fO\v5\fP\0>\4\1\f=\fQ\v5\fR\0=\fS\vB\t\2\2=\t7\b5\tU\0005\nT\0=\nN\t4\n\0\0=\nO\t=\tV\bB\6\2\0012\0\0€K\0\1\0\22inactive_sections\1\0\0\1\2\0\0\r%f %y %m\14lualine_z\1\3\0\0\n%l:%c\f%p%%/%L\14lualine_y\1\3\0\0\0\rfiletype\14lualine_x\14lualine_c\14lualine_b\0\1\2\0\0\a%q\0\1\2\0\0\a%r\tcond\0\1\2\0\0\a%w\ncolor\1\0\0\1\0\0\1\2\2\0\rfilename\tpath\3\1\16file_status\1\twarn\1\0\0\1\0\0\1\2\0\0\twarn\1\2\0\0\tnvim\1\2\0\0\16diagnostics\22diagnostics_color\nerror\1\0\0\1\0\0\rsections\1\2\0\0\nerror\vsource\1\2\0\0\tnvim\1\2\0\0\16diagnostics\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23section_separators\1\0\2\nright\bî‚º\tleft\bî‚¸\ntheme\1\0\1\25component_separators\5\nsetup\flualine\0\0\0\0\tdraw\vextend\22lualine.component\freplace\1\0\0\bred\1\0\0\vvisual\1\0\0\vorange\1\0\0\vinsert\1\0\0\ngreen\1\0\0\vnormal\1\0\0\6z\tgrey\1\0\0\6c\1\0\0\nblack\6b\vbg_alt\1\0\0\nwhite\6a\1\0\0\tcyan\afg\1\0\0\abg\20material.colors\frequire\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["lush.nvim"] = {
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/lush.nvim",
    url = "https://github.com/rktjmp/lush.nvim"
  },
  ["material.nvim"] = {
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/material.nvim",
    url = "https://github.com/marko-cerovac/material.nvim"
  },
  ["moonlight.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/moonlight.nvim",
    url = "https://github.com/shaunsingh/moonlight.nvim"
  },
  neorg = {
    config = { "\27LJ\2\nŽ\1\0\1\a\0\a\0\r9\1\0\0'\3\1\0'\4\2\0'\5\3\0'\6\4\0B\1\5\0019\1\0\0'\3\1\0'\4\2\0'\5\5\0'\6\6\0B\1\5\1K\0\1\0\28<cmd> echo 'hello' <cr>\bgtx&<cmd> Neorg toggle-concealer <cr>\14<leader>t\6n\tnorg\bmap„\2\1\0\a\0\19\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\17\0005\3\3\0004\4\0\0=\4\4\0035\4\b\0005\5\6\0003\6\5\0=\6\a\5=\5\t\4=\4\n\0035\4\14\0005\5\f\0005\6\v\0=\6\r\5=\5\t\4=\4\15\0034\4\0\0=\4\16\3=\3\18\2B\0\2\1K\0\1\0\tload\1\0\0\24core.norg.concealer\21core.norg.dirman\1\0\0\15workspaces\1\0\0\1\0\1\twork\17~/notes/work\18core.keybinds\vconfig\1\0\0\thook\1\0\0\0\18core.defaults\1\0\0\nsetup\nneorg\frequire\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/neorg",
    url = "https://github.com/nvim-neorg/neorg"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\nD\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\27custom.plugins.null-ls\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14autopairs\27plugins.configs.others\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    after = { "LuaSnip", "nvim-autopairs" },
    config = { "\27LJ\2\n3\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\24plugins.configs.cmp\frequire\0" },
    load_after = {
      ["friendly-snippets"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    config = { "\27LJ\2\nH\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14colorizer\27plugins.configs.others\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/NvChad/nvim-colorizer.lua"
  },
  ["nvim-lsp-installer"] = {
    after = { "nvim-lspconfig" },
    commands = { "LspInfo", "LspStart", "LspRestart", "LspStop", "LspInstall", "LspUnInstall", "LspUnInstallAll", "LspInstall", "LspInstallInfo", "LspInstallLog", "LspLog", "LspPrintInstalled" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    after = { "null-ls.nvim" },
    config = { "\27LJ\2\nc\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0016\0\0\0'\2\2\0B\0\2\1K\0\1\0\30plugins.configs.lspconfig\"plugins.configs.lsp_installer\frequire\0" },
    load_after = {
      ["nvim-lsp-installer"] = true
    },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n2\0\0\4\0\3\0\0066\0\0\0006\1\2\0'\3\1\0B\1\2\2=\1\1\0K\0\1\0\frequire\vnotify\bvim\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeToggle", "NvimTreeFocus" },
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29plugins.configs.nvimtree\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    commands = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSEnable", "TSDisable", "TSModuleInhfo" },
    config = { "\27LJ\2\n:\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\31plugins.configs.treesitter\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-autotag"] = {
    config = { "\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/nvim-ts-autotag",
    url = "https://github.com/windwp/nvim-ts-autotag"
  },
  ["nvim-ufo"] = {
    config = { "\27LJ\2\nÜ\1\0\0\3\0\f\0\0236\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1c\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\6\0'\1\b\0=\1\a\0006\0\t\0'\2\n\0B\0\2\0029\0\v\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bufo\frequire6eob: ,fold: ,foldopen:ï‘¼,foldsep: ,foldclose:ï‘ \14fillchars\6o\15foldenable\14foldlevel\0061\15foldcolumn\awo\bvim\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/nvim-ufo",
    url = "https://github.com/kevinhwang91/nvim-ufo"
  },
  ["nvim-web-devicons"] = {
    config = { "\27LJ\2\nG\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\rdevicons\27plugins.configs.others\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  nvterm = {
    config = { "\27LJ\2\n6\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\27plugins.configs.nvterm\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/nvterm",
    url = "https://github.com/NvChad/nvterm"
  },
  onebuddy = {
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/onebuddy",
    url = "https://github.com/Th3Whit3Wolf/onebuddy"
  },
  ["onedarkpro.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/onedarkpro.nvim",
    url = "https://github.com/olimorris/onedarkpro.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  playground = {
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/playground",
    url = "https://github.com/nvim-treesitter/playground"
  },
  ["plenary.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["postcss.vim"] = {
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/postcss.vim",
    url = "https://github.com/stephenway/postcss.vim"
  },
  ["promise-async"] = {
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/promise-async",
    url = "https://github.com/kevinhwang91/promise-async"
  },
  ["schemastore.nvim"] = {
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/schemastore.nvim",
    url = "https://github.com/b0o/schemastore.nvim"
  },
  ["shade.nvim"] = {
    config = { "\27LJ\2\ng\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\2\17opacity_step\3\1\20overlay_opacity\0032\nsetup\22sunjon/shade.nvim\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/shade.nvim",
    url = "https://github.com/sunjon/shade.nvim"
  },
  sonokai = {
    config = { "\27LJ\2\n9\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\14andromeda\18sonokai_style\6g\bvim\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/sonokai",
    url = "https://github.com/sainnhe/sonokai"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope.nvim"] = {
    commands = { "Telescope" },
    config = { "\27LJ\2\n9\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\30plugins.configs.telescope\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  ["vCoolor.vim"] = {
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/vCoolor.vim",
    url = "https://github.com/KabbAmine/vCoolor.vim"
  },
  ["vim-easy-align"] = {
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/vim-easy-align",
    url = "https://github.com/junegunn/vim-easy-align"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n8\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\29plugins.configs.whichkey\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/opt/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  },
  ["zeavim.vim"] = {
    config = { "\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/zeavim.vim",
    url = "https://github.com/KabbAmine/zeavim.vim"
  },
  ["zen-mode.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rzen-mode\frequire\0" },
    loaded = true,
    path = "/home/feaxer/.local/share/nvim/site/pack/packer/start/zen-mode.nvim",
    url = "https://github.com/folke/zen-mode.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^Comment"] = "Comment.nvim",
  ["^cmp_nvim_lsp"] = "friendly-snippets",
  ["^lspconfig"] = "nvim-lspconfig",
  ["^nvim%-treesitter"] = "nvim-treesitter",
  ["^nvim%-web%-devicons"] = "nvim-web-devicons",
  ["^nvterm"] = "nvterm",
  ["^plenary"] = "plenary.nvim",
  ["^shade"] = "shade.nvim",
  ["^which%-key"] = "which-key.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: nvim-colorizer.lua
time([[Setup for nvim-colorizer.lua]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\14colorizer\19core.lazy_load\frequire\0", "setup", "nvim-colorizer.lua")
time([[Setup for nvim-colorizer.lua]], false)
-- Setup for: indent-blankline.nvim
time([[Setup for indent-blankline.nvim]], true)
try_loadstring("\27LJ\2\n]\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\26indent-blankline.nvim\17on_file_open\19core.lazy_load\frequire\0", "setup", "indent-blankline.nvim")
time([[Setup for indent-blankline.nvim]], false)
-- Setup for: nvim-treesitter
time([[Setup for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nW\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\20nvim-treesitter\17on_file_open\19core.lazy_load\frequire\0", "setup", "nvim-treesitter")
time([[Setup for nvim-treesitter]], false)
-- Setup for: bufferline.nvim
time([[Setup for bufferline.nvim]], true)
try_loadstring("\27LJ\2\nA\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\15bufferline\19core.lazy_load\frequire\0", "setup", "bufferline.nvim")
time([[Setup for bufferline.nvim]], false)
-- Setup for: gitsigns.nvim
time([[Setup for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\rgitsigns\19core.lazy_load\frequire\0", "setup", "gitsigns.nvim")
time([[Setup for gitsigns.nvim]], false)
-- Setup for: nvim-lsp-installer
time([[Setup for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\nZ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\23nvim-lsp-installer\17on_file_open\19core.lazy_load\frequire\0", "setup", "nvim-lsp-installer")
time([[Setup for nvim-lsp-installer]], false)
-- Config for: leap.nvim
time([[Config for leap.nvim]], true)
try_loadstring("\27LJ\2\n†\1\0\0\3\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\4\0B\0\1\1K\0\1\0\24set_default_keymaps\1\0\2\19case_sensitive\1\24highlight_unlabeled\2\nsetup\tleap\frequire\0", "config", "leap.nvim")
time([[Config for leap.nvim]], false)
-- Config for: nvim-ts-autotag
time([[Config for nvim-ts-autotag]], true)
try_loadstring("\27LJ\2\n=\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\20nvim-ts-autotag\frequire\0", "config", "nvim-ts-autotag")
time([[Config for nvim-ts-autotag]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n\0\2\6\0\5\0\r'\2\1\0=\2\0\0'\2\1\0=\2\2\0\18\4\0\0009\2\3\0\18\5\1\0B\2\3\1\18\4\0\0009\2\4\0B\2\2\0019\2\0\0L\2\2\0\29apply_section_separators\21apply_highlights\22applied_separator\5\vstatusƒ\3\0\1\18\2\17\2C6\1\0\0\18\3\0\0B\1\2\4H\4<€\18\b\4\0009\6\1\4)\t\t\0)\n\n\0B\6\4\2'\a\2\0\0\6\a\0X\6\2€+\6\1\0X\a\1€+\6\2\0)\a\1\0\6\4\3\0X\b\3€\21\b\5\0\14\0\b\0X\t\2€\21\b\5\0\23\b\0\b)\t\1\0M\a\17€6\v\4\0009\v\5\v\18\r\5\0\24\14\1\n5\15\n\0-\16\0\0>\16\1\0155\16\a\0-\17\1\0009\17\6\17=\17\b\16-\17\1\0009\17\t\17=\17\t\16=\16\v\15B\v\4\1O\aï6\a\f\0\18\t\5\0B\a\2\4X\n\16€6\f\r\0\18\14\v\0B\f\2\2\6\f\4\0X\f\4€4\f\3\0>\v\1\f\18\v\f\0<\v\n\5\15\0\6\0X\f\3€5\f\15\0\14\0\f\0X\r\1€5\f\16\0=\f\14\vE\n\3\3R\nîF\4\3\3R\4ÂL\0\2\0\2À\0À\1\0\1\tleft\bî‚º\1\0\1\nright\bî‚¸\14separator\ttype\vipairs\ncolor\1\0\0\abg\afg\1\0\0\nwhite\vinsert\ntable\14lualine_z\6x\bsub\npairs\2\4Í\1\0\0\b\0\r\1\0316\0\0\0009\0\1\0009\0\2\0\t\0\0\0X\0\2€'\0\3\0L\0\2\0006\0\0\0009\0\4\0009\0\5\0'\2\6\0B\0\2\2\15\0\0\0X\1\2€\a\0\3\0X\1\2€'\1\3\0L\1\2\0006\1\0\0009\1\4\0019\1\a\0015\3\b\0B\1\2\2\18\2\0\0'\3\t\0009\4\n\1'\5\6\0009\6\v\1'\a\f\0&\2\a\2L\2\2\0\6)\ntotal\fcurrent\6(\1\0\1\rmaxcount\3N\16searchcount\6/\vgetreg\afn\5\rhlsearch\6v\bvim\0ˆ\1\0\0\1\0\b\0\0226\0\0\0009\0\1\0009\0\2\0\15\0\0\0X\1\3€'\0\3\0L\0\2\0X\0\f€6\0\0\0009\0\1\0009\0\4\0\n\0\1\0X\0\5€6\0\0\0009\0\1\0009\0\5\0\v\0\2\0X\0\2€'\0\6\0L\0\2\0'\0\a\0L\0\2\0\5\6-\rreadonly\15modifiable\6+\rmodified\abo\bvim,\0\0\1\0\3\0\0046\0\0\0009\0\1\0009\0\2\0L\0\2\0\18previewwindow\awo\bvim'\0\0\1\0\3\0\0046\0\0\0009\0\1\0009\0\2\0L\0\2\0\rreadonly\abo\bvimC\0\0\1\0\4\0\t6\0\0\0009\0\1\0009\0\2\0\6\0\3\0X\0\2€+\0\1\0X\1\1€+\0\2\0L\0\2\0\rquickfix\fbuftype\abo\bvimÚ\t\1\0\17\0W\0–\0016\0\0\0'\2\1\0B\0\2\0025\1\18\0005\2\6\0005\3\3\0009\4\2\0=\4\4\0039\4\5\0=\4\2\3=\3\a\0025\3\t\0009\4\b\0=\4\4\0039\4\n\0=\4\2\3=\3\v\0025\3\r\0009\4\f\0=\4\4\0039\4\2\0=\4\2\3=\3\14\0025\3\15\0009\4\b\0=\4\4\0039\4\16\0=\4\2\3=\3\17\2=\2\19\0015\2\22\0005\3\20\0009\4\f\0=\4\4\0039\4\21\0=\4\2\3=\3\a\2=\2\23\0015\2\26\0005\3\24\0009\4\f\0=\4\4\0039\4\25\0=\4\2\3=\3\a\2=\2\27\0015\2\30\0005\3\28\0009\4\f\0=\4\4\0039\4\29\0=\4\2\3=\3\a\2=\2\31\0016\2\0\0'\4 \0B\2\2\2\18\4\2\0009\2!\2B\2\2\0023\3#\0=\3\"\0023\3$\0003\4%\0003\5&\0006\6\0\0'\b'\0B\6\2\0029\6(\0065\b-\0005\t)\0=\1*\t5\n+\0=\n,\t=\t.\b\18\t\3\0005\v0\0005\f/\0=\f1\v5\f2\0005\r3\0005\0144\0=\0145\r5\0146\0=\0147\r5\0149\0005\0158\0009\16\29\0=\16\2\0159\16\2\0=\16\4\15=\15:\14=\14;\r>\r\3\f5\r<\0005\14=\0=\0145\r5\14>\0=\0147\r5\14@\0005\15?\0009\16\25\0=\16\2\0159\16\2\0=\16\4\15=\15A\14=\14;\r>\r\4\f5\rB\0>\r\5\f5\rD\0>\5\1\r5\14C\0009\15\29\0=\15\2\14=\14E\r>\r\6\f5\rF\0003\14G\0=\14H\r>\r\a\f5\rI\0003\14J\0=\14H\r>\r\b\f5\rK\0003\14L\0=\14H\r>\r\t\f=\fM\v4\f\0\0=\fN\v4\f\0\0=\fO\v5\fP\0>\4\1\f=\fQ\v5\fR\0=\fS\vB\t\2\2=\t7\b5\tU\0005\nT\0=\nN\t4\n\0\0=\nO\t=\tV\bB\6\2\0012\0\0€K\0\1\0\22inactive_sections\1\0\0\1\2\0\0\r%f %y %m\14lualine_z\1\3\0\0\n%l:%c\f%p%%/%L\14lualine_y\1\3\0\0\0\rfiletype\14lualine_x\14lualine_c\14lualine_b\0\1\2\0\0\a%q\0\1\2\0\0\a%r\tcond\0\1\2\0\0\a%w\ncolor\1\0\0\1\0\0\1\2\2\0\rfilename\tpath\3\1\16file_status\1\twarn\1\0\0\1\0\0\1\2\0\0\twarn\1\2\0\0\tnvim\1\2\0\0\16diagnostics\22diagnostics_color\nerror\1\0\0\1\0\0\rsections\1\2\0\0\nerror\vsource\1\2\0\0\tnvim\1\2\0\0\16diagnostics\1\3\0\0\vbranch\tdiff\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\23section_separators\1\0\2\nright\bî‚º\tleft\bî‚¸\ntheme\1\0\1\25component_separators\5\nsetup\flualine\0\0\0\0\tdraw\vextend\22lualine.component\freplace\1\0\0\bred\1\0\0\vvisual\1\0\0\vorange\1\0\0\vinsert\1\0\0\ngreen\1\0\0\vnormal\1\0\0\6z\tgrey\1\0\0\6c\1\0\0\nblack\6b\vbg_alt\1\0\0\nwhite\6a\1\0\0\tcyan\afg\1\0\0\abg\20material.colors\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: zen-mode.nvim
time([[Config for zen-mode.nvim]], true)
try_loadstring("\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rzen-mode\frequire\0", "config", "zen-mode.nvim")
time([[Config for zen-mode.nvim]], false)
-- Config for: sonokai
time([[Config for sonokai]], true)
try_loadstring("\27LJ\2\n9\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\14andromeda\18sonokai_style\6g\bvim\0", "config", "sonokai")
time([[Config for sonokai]], false)
-- Config for: moonlight.nvim
time([[Config for moonlight.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "moonlight.nvim")
time([[Config for moonlight.nvim]], false)
-- Config for: gatsby
time([[Config for gatsby]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "gatsby")
time([[Config for gatsby]], false)
-- Config for: aerial.nvim
time([[Config for aerial.nvim]], true)
try_loadstring("\27LJ\2\n8\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\vaerial\frequire\0", "config", "aerial.nvim")
time([[Config for aerial.nvim]], false)
-- Config for: neorg
time([[Config for neorg]], true)
try_loadstring("\27LJ\2\nŽ\1\0\1\a\0\a\0\r9\1\0\0'\3\1\0'\4\2\0'\5\3\0'\6\4\0B\1\5\0019\1\0\0'\3\1\0'\4\2\0'\5\5\0'\6\6\0B\1\5\1K\0\1\0\28<cmd> echo 'hello' <cr>\bgtx&<cmd> Neorg toggle-concealer <cr>\14<leader>t\6n\tnorg\bmap„\2\1\0\a\0\19\0\0256\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\17\0005\3\3\0004\4\0\0=\4\4\0035\4\b\0005\5\6\0003\6\5\0=\6\a\5=\5\t\4=\4\n\0035\4\14\0005\5\f\0005\6\v\0=\6\r\5=\5\t\4=\4\15\0034\4\0\0=\4\16\3=\3\18\2B\0\2\1K\0\1\0\tload\1\0\0\24core.norg.concealer\21core.norg.dirman\1\0\0\15workspaces\1\0\0\1\0\1\twork\17~/notes/work\18core.keybinds\vconfig\1\0\0\thook\1\0\0\0\18core.defaults\1\0\0\nsetup\nneorg\frequire\0", "config", "neorg")
time([[Config for neorg]], false)
-- Config for: tokyonight.nvim
time([[Config for tokyonight.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "tokyonight.nvim")
time([[Config for tokyonight.nvim]], false)
-- Config for: neoscroll.nvim
time([[Config for neoscroll.nvim]], true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14neoscroll\frequire\0", "config", "neoscroll.nvim")
time([[Config for neoscroll.nvim]], false)
-- Config for: hop.nvim
time([[Config for hop.nvim]], true)
try_loadstring("\27LJ\2\nU\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\tkeys\28etovxqpdygfblzhckisuran\nsetup\bhop\frequire\0", "config", "hop.nvim")
time([[Config for hop.nvim]], false)
-- Config for: nvim-notify
time([[Config for nvim-notify]], true)
try_loadstring("\27LJ\2\n2\0\0\4\0\3\0\0066\0\0\0006\1\2\0'\3\1\0B\1\2\2=\1\1\0K\0\1\0\frequire\vnotify\bvim\0", "config", "nvim-notify")
time([[Config for nvim-notify]], false)
-- Config for: jaq-nvim
time([[Config for jaq-nvim]], true)
try_loadstring("\27LJ\2\né\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\2B\0\2\1K\0\1\0\tcmds\1\0\0\rexternal\1\0\a\tvala\23valac --pkg gtk4 %\trust\14cargo run\nswift\14swift run\vpytohn\rpython %\15javascript\14bun run %\blua\nlua %\15typescript\14bun run %\1\0\1\fdefault\tbang\nsetup\rjaq-nvim\frequire\0", "config", "jaq-nvim")
time([[Config for jaq-nvim]], false)
-- Config for: zeavim.vim
time([[Config for zeavim.vim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "zeavim.vim")
time([[Config for zeavim.vim]], false)
-- Config for: onedarkpro.nvim
time([[Config for onedarkpro.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\0\1\0\0\0\1K\0\1\0\0", "config", "onedarkpro.nvim")
time([[Config for onedarkpro.nvim]], false)
-- Config for: nvim-ufo
time([[Config for nvim-ufo]], true)
try_loadstring("\27LJ\2\nÜ\1\0\0\3\0\f\0\0236\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0)\1c\0=\1\4\0006\0\0\0009\0\1\0+\1\2\0=\1\5\0006\0\0\0009\0\6\0'\1\b\0=\1\a\0006\0\t\0'\2\n\0B\0\2\0029\0\v\0004\2\0\0B\0\2\1K\0\1\0\nsetup\bufo\frequire6eob: ,fold: ,foldopen:ï‘¼,foldsep: ,foldclose:ï‘ \14fillchars\6o\15foldenable\14foldlevel\0061\15foldcolumn\awo\bvim\0", "config", "nvim-ufo")
time([[Config for nvim-ufo]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file LspUnInstall lua require("packer.load")({'nvim-lsp-installer'}, { cmd = "LspUnInstall", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file LspUnInstallAll lua require("packer.load")({'nvim-lsp-installer'}, { cmd = "LspUnInstallAll", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file LspInstallInfo lua require("packer.load")({'nvim-lsp-installer'}, { cmd = "LspInstallInfo", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file LspInstallLog lua require("packer.load")({'nvim-lsp-installer'}, { cmd = "LspInstallLog", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file LspLog lua require("packer.load")({'nvim-lsp-installer'}, { cmd = "LspLog", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file LspPrintInstalled lua require("packer.load")({'nvim-lsp-installer'}, { cmd = "LspPrintInstalled", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSInstall lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSInstall", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSBufEnable lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSBufEnable", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSBufDisable lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSBufDisable", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSEnable lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSEnable", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSDisable lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSDisable", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TSModuleInhfo lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSModuleInhfo", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeFocus lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeFocus", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Telescope lua require("packer.load")({'telescope.nvim'}, { cmd = "Telescope", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file LspInfo lua require("packer.load")({'nvim-lsp-installer'}, { cmd = "LspInfo", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file LspStart lua require("packer.load")({'nvim-lsp-installer'}, { cmd = "LspStart", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file LspRestart lua require("packer.load")({'nvim-lsp-installer'}, { cmd = "LspRestart", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file LspStop lua require("packer.load")({'nvim-lsp-installer'}, { cmd = "LspStop", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file LspInstall lua require("packer.load")({'nvim-lsp-installer', 'nvim-lsp-installer'}, { cmd = "LspInstall", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[noremap <silent> gc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[noremap <silent> gb <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType alpha ++once lua require("packer.load")({'nvim-tree.lua'}, { ft = "alpha" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'friendly-snippets'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
