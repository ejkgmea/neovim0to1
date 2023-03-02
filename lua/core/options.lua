local opt = vim.opt

-- set history how many line vim has rember
opt.history = 500

opt.number = true
opt.relativenumber = false

-- indent
opt.tabstop = 2
opt.expandtab = true
opt.smartindent = true
opt.autoindent = true
opt.shiftwidth = 2
opt.smarttab = true
opt.expandtab = true


-- nowrap
opt.wrap = false

-- cursor
opt.cursorline = true
opt.so = 7 -- Set 7 lines to the cursor - when moving vertically using j/k

-- mouse opend
opt.mouse:append("a")

-- open system clipboard
opt.clipboard:append("unnamedplus")

-- current file search
opt.ignorecase = false
opt.smartcase = false

opt.signcolumn = "yes" -- set left 1 col to display git modify info

-- Return to last edit position when opening files (You want this!)
vim.cmd[[ autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]]

-- auto read json file
vim.cmd[[ autocmd FileType json syntax match Comment +\/\/.\+$+]]

-- auto complete css
vim.cmd[[ autocmd FileType css setl iskeyword+=-]]



