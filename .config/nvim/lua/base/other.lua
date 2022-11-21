local opt = vim.opt
local g = vim.g

-- Тема
vim.cmd[[colorscheme ayu]]

--[[ Нумерация строк ]]-- 
vim.o.relativenumber = true

--[[ Настройка панелей ]]--

-- Сплит вертикальный всегда справа
opt.splitright = true

-- Сплит горизонтаьный всегда вниз
opt.splitbelow = true

--[[ Дополнительные настройки ]]--

-- Системный буффер обмена
opt.clipboard = 'unnamedplus'

-- Не автокомментировать новые строки
vim.cmd [[autocmd BufEnter * set fo-=c fo-=r fo-=o]]

