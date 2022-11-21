local map = vim.api.nvim_set_keymap

--[[
	Метод для установки горячих клавиш в normal mode
]]--

function nm(key, command)
	map ('n', key, command, {noremap = true})
end

--[[
	Метод для установки горячих клавиш в input mode
]]--

function im(key, command)
	map('i', key, command, {noremap = true})
end

--[[
	Метод для установки горячих клавишь в visual mode
]]--

function vm(key, command)
	map('v', key, command, {noremap = true})
end

--[[
	Метод для установки горячих клавиш в terminal mode
]]--

function tm(key, command)
	map('t', key, command, {noremap = true})
end

