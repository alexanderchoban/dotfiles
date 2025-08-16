-- ================================
-- Install packer if missing
-- ================================
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({ "git", "clone", "--depth", "1", "https://github.com/wbthomason/packer.nvim", install_path })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

-- ================================
-- Plugins
-- ================================
require("packer").startup(function(use)
  use "wbthomason/packer.nvim" -- Packer manages itself
  use "sheerun/vim-polyglot"
  use "preservim/nerdtree"
  use "tpope/vim-fugitive"
  use "Townk/vim-autoclose"
  use "vim-airline/vim-airline"
  use "vim-airline/vim-airline-themes"
  use "vim-scripts/DrawIt"
  use "dracula/vim"

  if packer_bootstrap then
    require("packer").sync()
  end
end)

-- ================================
-- Mappings
-- ================================
vim.keymap.set("n", "<C-n>", ":NERDTreeToggle<CR>", { noremap = true, silent = true })

-- ================================
-- Appearance
-- ================================
if vim.fn.has("termguicolors") == 1 then
  vim.opt.termguicolors = true
end

vim.cmd("syntax enable")
vim.cmd("colorscheme dracula")

-- Airline Config
vim.g.airline_powerline_fonts = 1
vim.g.airline_theme = "light"

-- ================================
-- General Settings
-- ================================
vim.opt.number = true
vim.opt.encoding = "utf-8"
vim.opt.wildmenu = true
vim.opt.showmatch = true

-- Tab Settings
vim.opt.tabstop = 2
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.autoindent = true
vim.opt.smartindent = true

