local opt = vim.opt
local g = vim.g

--[[ Настройка табов ]]--
-- Установка количества пробельных символов, при перемещении на "<" ">"
opt.shiftwidth = 2

opt.tabstop = 2

-- Подстраивать новые строки под предыдущие
opt.smartindent = true
