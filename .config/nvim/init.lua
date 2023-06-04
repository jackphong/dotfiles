-- Use vimplug with lua 
-- https://dev.to/vonheikemen/neovim-using-vim-plug-in-lua-3oom
local Plug = vim.fn['plug#']
vim.call('plug#begin')

Plug 'preservim/nerdtree'
Plug 'lewis6991/gitsigns.nvim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug('neoclide/coc.nvim', {branch = 'release'})

vim.call('plug#end')

require('gitsigns').setup()

-- Config for nvim specific

-- Enable line numbers
vim.api.nvim_command('set number')

-- Ctrl + P File fuzzy finding (VSCode Inspired)
vim.api.nvim_command('nnoremap <c-p> :FZF -i<cr>')

vim.api.nvim_command('nnoremap <c-a> :Buffers<cr>')

-- gd uses coc instead of default vim
vim.api.nvim_command('nmap <silent> gd <Plug>(coc-definition)')
vim.api.nvim_command('nmap <silent> gi <Plug>(coc-implementation)')
vim.api.nvim_command('nmap <silent> gr <Plug>(coc-references)')

