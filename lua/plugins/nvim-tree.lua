-- 
-- to check the help document: g?
--
-- 默认不开启 nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
  view = {
    float = {
      enable = true,
      quit_on_focus_loss = true,
      open_win_config = {
        relative = "editor",
        border = "rounded",
        width = 60,
        height = 30,
        row = 2,
        col = 35,
      },
    },
  },
})

local function open_nvim_tree(data)

  -- buffer is a directory
  local directory = vim.fn.isdirectory(data.file) == 1

  if not directory then
    return
  end

  -- change to the directory
  vim.cmd.cd(data.file)

  -- open the tree
  require("nvim-tree.api").tree.open()
end

-- open at vim setup
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

