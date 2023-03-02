-- 自动安装 packer

local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()


-- 保存此文件自动更新安装软件
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'folke/tokyonight.nvim' -- 主题

  use { -- 状态栏
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true } -- 状态栏图标
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {
      'nvim-tree/nvim-web-devicons', -- optional, for file icons, 需要下载 Nerd Font
    },
  }
  use 'nvim-treesitter/nvim-treesitter' -- 语法高亮
  use 'p00f/nvim-ts-rainbow' -- 配合 treesitter, 不同颜色括号颜色区分

  use "numToStr/Comment.nvim" -- gcc和gc注释
  use "windwp/nvim-autopairs" -- 自动补全括号

  use "lewis6991/gitsigns.nvim" -- 左则git提示

  use {
    'nvim-telescope/telescope.nvim',
    requires = { 
      {'nvim-lua/plenary.nvim'},
      {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    }
  }
  
  use 'famiu/bufdelete.nvim'

  use { 'neoclide/coc.nvim', branch = 'release' }

  use "mattn/emmet-vim" -- in this plugin, you need to install coc-emmet to complete emmet

  if packer_bootstrap then
    require('packer').sync()
  end
end)
