require('simonfarkas.base')
require('simonfarkas.highlights')
require('simonfarkas.maps')
require('simonfarkas.plugins')

local has = vim.fn.has
local is_mac = has "macunix"
local is_win = has "win32"
local is_wsl = has "wsl"

if is_mac == 1 then
	require('simonfarkas.macos')
end
if is_win == 1 then
	require('simonfarkas.windows')
end
if is_wsl == 1 then
	require('simonfarkas.wsl')
end
