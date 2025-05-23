local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
	return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
	defaults = {
		mappings = {
			n = {
				["q"] = actions.close
			},
		},
	},
	extensions = {
		file_browser = {
			theme = "dropdown",
			hijack_netrw = true,
			mappings = {
				["i"] = {
					["<C-w>"] = function() vim.cmd('normal vbd') end,
				},
				["n"] = {
					["N"] = fb_actions.create,
					["h"] = fb_actions.goto_parent_dir,
					["/"] = function()
						vim.cmd('startinsert')
					end
				},
			},
		},
	},
}

telescope.load_extension("file_browser")

vim.keymap.set('n', 'ff',
	function()
		builtin.find_files({
			no_ignore = false,
			hidden = true,
			file_ignore_patterns = { "node_modules", ".git", "dist", "build" }
		})
	end)

vim.keymap.set('n', 'fF', function()
	builtin.find_files({
		hidden = true,
		no_ignore = true,
		file_ignore_patterns = {}
	})
end)

vim.keymap.set("n", "fb", function()
	telescope.extensions.file_browser.file_browser({
		path = "%:p:h",
		cwd = telescope_buffer_dir(),
		respect_gitignore = false,
		hidden = true,
		grouped = true,
		previewer = false,
		initial_mode = "normal",
		layout_config = { height = 40 },
		file_ignore_patterns = { "node_modules", ".git", "dist", "build" }
	})
end)
