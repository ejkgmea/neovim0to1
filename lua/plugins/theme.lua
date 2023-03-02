require('lualine').setup({
  options = {
    theme = 'tokyonight',
  }
})

require('tokyonight').setup({
  style = "moon",
  transparent = true,
  styles = {
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "transparent", -- for sidebars, see below
    floats = "transparent", -- for floats window
  },

  on_highlights = function(highlights, colors)

    highlights.CursorLineNr = { 
      fg = colors.yellow,
      bold = true 
    }
    highlights.LineNr = { 
      fg = "#999999"
    }
  end,
})

vim.cmd[[ colorscheme tokyonight ]]

vim.cmd[[ highlight CursorLine guibg=#666666 ]]

