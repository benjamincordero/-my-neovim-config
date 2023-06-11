local g = vim.g
g.mapleader = " "
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- basic maps
vim.keymap.set('n', '<F5>', ':so ~/.config/nvim/init.lua<CR>', opts)
vim.keymap.set('n', '<Leader>q', ':q<CR>')
vim.keymap.set('n', '<Leader>qq', ':q!<CR>')
vim.keymap.set('n', '<Leader>w', ':w<CR>')
vim.keymap.set({ 'n', 'v' }, '<M-z>', ':set wrap!<CR>', { silent = true })
vim.keymap.set('v', '<Tab>', '>gv<CR>')
vim.keymap.set('v', '<S-Tab>', '<gv<CR>', opts)
vim.keymap.set('n', '<ESC>', ':nohl<CR>', { silent = true })
vim.keymap.set('n', '<Leader>j', ':vsplit<CR>', opts)
vim.keymap.set('n', '<Leader>h', ':split<CR>', opts)

-- Terminal
vim.keymap.set({ 'n', 'v' }, '<C-t>', ':split<CR>:ter<CR>:resize 15<CR>')

-- Size windows
vim.keymap.set('n', '<Leader>>', '10<C-w>>', opts)
vim.keymap.set('n', '<Leader><', '10<C-w><', opts)

-- editor
vim.keymap.set('n', 'tp', ':tabprevious<CR>', opts)
vim.keymap.set('n', 'tn', ':tabnext<CR>', opts)
vim.keymap.set('n', 'tf', ':tabfirst<CR>', opts)
vim.keymap.set('n', 'tl', ':tablast<CR>', opts)
vim.keymap.set('n', '<TAB>', ':tabnext<CR>', opts)
vim.keymap.set('n', '<S-TAB>', ':tabprevious<CR>', opts)

vim.keymap.set('n', '<Leader>1', ':tabn1<CR>', opts)
vim.keymap.set('n', '<Leader>2', ':tabn2<CR>', opts)
vim.keymap.set('n', '<Leader>3', ':tabn3<CR>', opts)
vim.keymap.set('n', '<Leader>4', ':tabn4<CR>', opts)
vim.keymap.set('n', '<Leader>5', ':tabn5<CR>', opts)
vim.keymap.set('n', '<Leader>6', ':tabn6<CR>', opts)
-- You can put more here, many as you need them

vim.keymap.set('n', '<Leader>b', ':NvimTreeFindFileToggle<CR>', opts)
vim.keymap.set({ 'n', 'v' }, '--', '<plug>NERDCommenterToggle', opts)
vim.keymap.set('n', ')', '<Plug>(GitGutterNextHunk)', opts)
vim.keymap.set('n', '(', '<Plug>(GitGutterPrevHunk)', opts)
vim.keymap.set('n', '<Leader>tr', ':TransparentToggle<CR>', opts)
vim.keymap.set('n', '<C-d>', ':Alpha<CR>', opts)

-- Copilot
g.copilot_no_tab_map = true
map("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
