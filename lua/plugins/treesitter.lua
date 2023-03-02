require('nvim-treesitter.configs').setup {
  ensure_installed = { "vim", "help", "bash", "javascript", "go", "json", "lua", "python", "html", "vue", "css" },

  auto_install = true,
  -- ignore_install = { "javascript" },

  highlight = { enable = true },
  indent = { enable = true },

  -- 不同括号颜色区分
  rainbow = {
    enable = true,
    extended_mode = true,
    max_file_lines = nil,
  }
}
