local previewer = require("preview-me.previewer")
local windower = require("preview-me.windower")
local keybindings = require("preview-me.keybindings")
local M = {}

function M.open()
	previewer.open_references()
end

function M.open_in_buf()
	windower.open_in_curr_window()
end

function M.setup(config)
	if config.keys ~= nil then
		print("Binding = ", config.keys[1][1])
		print("Command = ", config.keys[1][2])
		print("Keybindings = ", keybindings)
		print("Passing = ", config.keys[1])
		if keybindings ~= nil then
			print("Applying custom key bindings...")
            keybindings.update_key_binding(config.keys[1])
        else
            print("Couldn't find keybindings module to apply custom bindings...")
		end
	end
end

return M
