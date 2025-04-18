-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/simonfarkas/.cache/nvim/packer_hererocks/2.1.1727870382/share/lua/5.1/?.lua;/Users/simonfarkas/.cache/nvim/packer_hererocks/2.1.1727870382/share/lua/5.1/?/init.lua;/Users/simonfarkas/.cache/nvim/packer_hererocks/2.1.1727870382/lib/luarocks/rocks-5.1/?.lua;/Users/simonfarkas/.cache/nvim/packer_hererocks/2.1.1727870382/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/simonfarkas/.cache/nvim/packer_hererocks/2.1.1727870382/lib/lua/5.1/?.so"
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
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["copilot.vim"] = {
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/copilot.vim",
    url = "https://github.com/github/copilot.vim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    config = { "\27LJ\2\n\v\0\2\2\0\0\0\1K\0\1\0‰\2\1\0\a\0\17\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0005\2\5\0005\3\4\0=\3\6\2B\0\2\0016\0\0\0'\2\a\0B\0\2\0029\1\b\0009\1\2\0015\3\n\0003\4\t\0=\4\v\0035\4\15\0005\5\r\0005\6\f\0=\6\14\5=\5\b\4=\4\16\3B\1\2\1K\0\1\0\rsettings\1\0\1\ngopls\0\ranalyses\1\0\2\ranalyses\0\16staticcheck\2\1\0\1\17unusedparams\2\14on_attach\1\0\2\rsettings\0\14on_attach\0\0\ngopls\14lspconfig\21ensure_installed\1\0\1\21ensure_installed\0\1\6\0\0\vlua_ls\ngopls\nts_ls\veslint\vjsonls\20mason-lspconfig\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["none-ls.nvim"] = {
    config = { "\27LJ\2\nW\0\0\4\1\6\0\t6\0\0\0009\0\1\0009\0\2\0009\0\3\0005\2\4\0-\3\0\0=\3\5\2B\0\2\1K\0\1\0\1¿\nbufnr\1\0\2\nbufnr\0\nasync\1\vformat\bbuf\blsp\bvimö\2\1\2\a\1\r\0\0269\2\0\0'\4\1\0B\2\2\2\15\0\2\0X\3\19Ä6\2\2\0009\2\3\0029\2\4\0025\4\5\0-\5\0\0=\5\6\4=\1\a\4B\2\2\0016\2\2\0009\2\3\0029\2\b\2'\4\t\0005\5\n\0-\6\0\0=\6\6\5=\1\a\0053\6\v\0=\6\f\5B\2\3\0012\0\0ÄK\0\1\0\1¿\rcallback\0\1\0\3\vbuffer\0\rcallback\0\ngroup\0\16BufWritePre\24nvim_create_autocmd\vbuffer\ngroup\1\0\2\ngroup\0\vbuffer\0\24nvim_clear_autocmds\bapi\bvim\28textDocument/formatting\20supports_methodÁ\1\1\0\a\0\14\0\0226\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0004\4\0\0B\1\3\0029\2\6\0005\4\n\0004\5\3\0009\6\a\0009\6\b\0069\6\t\6>\6\1\5=\5\v\0043\5\f\0=\5\r\4B\2\2\0012\0\0ÄK\0\1\0\14on_attach\0\fsources\1\0\2\fsources\0\14on_attach\0\14prettierd\15formatting\rbuiltins\nsetup\18LspFormatting\24nvim_create_augroup\bapi\bvim\fnull-ls\frequire\0" },
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/none-ls.nvim",
    url = "https://github.com/nvimtools/none-ls.nvim"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/nvim-colorizer.lua",
    url = "https://github.com/NvChad/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nù\2\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\14highlight\fdisable\1\3\0\0\6c\trust\1\0\3\fdisable\0\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\4\14highlight\0\17sync_install\1\17auto_install\2\21ensure_installed\0\1\5\0\0\blua\15typescript\ago\tjson\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rose-pine"] = {
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/rose-pine",
    url = "https://github.com/rose-pine/neovim"
  },
  ["telescope-file-browser.nvim"] = {
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/telescope-file-browser.nvim",
    url = "https://github.com/nvim-telescope/telescope-file-browser.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tick.nvim"] = {
    config = { "\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ttick\frequire\0" },
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/tick.nvim",
    url = "/Users/simonfarkas/Work/tick.nvim"
  },
  ["vim-gofmt"] = {
    config = { "\27LJ\2\n6\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\ngofmt\19go_fmt_command\6g\bvim\0" },
    loaded = true,
    path = "/Users/simonfarkas/.local/share/nvim/site/pack/packer/start/vim-gofmt",
    url = "https://github.com/darrikonn/vim-gofmt"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: none-ls.nvim
time([[Config for none-ls.nvim]], true)
try_loadstring("\27LJ\2\nW\0\0\4\1\6\0\t6\0\0\0009\0\1\0009\0\2\0009\0\3\0005\2\4\0-\3\0\0=\3\5\2B\0\2\1K\0\1\0\1¿\nbufnr\1\0\2\nbufnr\0\nasync\1\vformat\bbuf\blsp\bvimö\2\1\2\a\1\r\0\0269\2\0\0'\4\1\0B\2\2\2\15\0\2\0X\3\19Ä6\2\2\0009\2\3\0029\2\4\0025\4\5\0-\5\0\0=\5\6\4=\1\a\4B\2\2\0016\2\2\0009\2\3\0029\2\b\2'\4\t\0005\5\n\0-\6\0\0=\6\6\5=\1\a\0053\6\v\0=\6\f\5B\2\3\0012\0\0ÄK\0\1\0\1¿\rcallback\0\1\0\3\vbuffer\0\rcallback\0\ngroup\0\16BufWritePre\24nvim_create_autocmd\vbuffer\ngroup\1\0\2\ngroup\0\vbuffer\0\24nvim_clear_autocmds\bapi\bvim\28textDocument/formatting\20supports_methodÁ\1\1\0\a\0\14\0\0226\0\0\0'\2\1\0B\0\2\0026\1\2\0009\1\3\0019\1\4\1'\3\5\0004\4\0\0B\1\3\0029\2\6\0005\4\n\0004\5\3\0009\6\a\0009\6\b\0069\6\t\6>\6\1\5=\5\v\0043\5\f\0=\5\r\4B\2\2\0012\0\0ÄK\0\1\0\14on_attach\0\fsources\1\0\2\fsources\0\14on_attach\0\14prettierd\15formatting\rbuiltins\nsetup\18LspFormatting\24nvim_create_augroup\bapi\bvim\fnull-ls\frequire\0", "config", "none-ls.nvim")
time([[Config for none-ls.nvim]], false)
-- Config for: tick.nvim
time([[Config for tick.nvim]], true)
try_loadstring("\27LJ\2\n2\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\ttick\frequire\0", "config", "tick.nvim")
time([[Config for tick.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nù\2\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0005\4\a\0=\4\b\3=\3\t\2B\0\2\1K\0\1\0\14highlight\fdisable\1\3\0\0\6c\trust\1\0\3\fdisable\0\venable\2&additional_vim_regex_highlighting\1\21ensure_installed\1\0\4\14highlight\0\17sync_install\1\17auto_install\2\21ensure_installed\0\1\5\0\0\blua\15typescript\ago\tjson\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: vim-gofmt
time([[Config for vim-gofmt]], true)
try_loadstring("\27LJ\2\n6\0\0\2\0\4\0\0056\0\0\0009\0\1\0'\1\3\0=\1\2\0K\0\1\0\ngofmt\19go_fmt_command\6g\bvim\0", "config", "vim-gofmt")
time([[Config for vim-gofmt]], false)
-- Config for: mason.nvim
time([[Config for mason.nvim]], true)
try_loadstring("\27LJ\2\n\v\0\2\2\0\0\0\1K\0\1\0‰\2\1\0\a\0\17\0\0296\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0005\2\5\0005\3\4\0=\3\6\2B\0\2\0016\0\0\0'\2\a\0B\0\2\0029\1\b\0009\1\2\0015\3\n\0003\4\t\0=\4\v\0035\4\15\0005\5\r\0005\6\f\0=\6\14\5=\5\b\4=\4\16\3B\1\2\1K\0\1\0\rsettings\1\0\1\ngopls\0\ranalyses\1\0\2\ranalyses\0\16staticcheck\2\1\0\1\17unusedparams\2\14on_attach\1\0\2\rsettings\0\14on_attach\0\0\ngopls\14lspconfig\21ensure_installed\1\0\1\21ensure_installed\0\1\6\0\0\vlua_ls\ngopls\nts_ls\veslint\vjsonls\20mason-lspconfig\nsetup\nmason\frequire\0", "config", "mason.nvim")
time([[Config for mason.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
