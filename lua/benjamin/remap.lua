local g = vim.g
g.mapleader = " "
local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- basic maps
vim.keymap.set('n', '<F5>', ':luafile ~/.config/nvim/init.lua<CR>')
vim.keymap.set('n', '<Leader>q', ':q<CR>')
vim.keymap.set('n', '<Leader>qq', ':q!<CR>')
vim.keymap.set('n', '<Leader>w', ':w<CR>')
vim.keymap.set({ 'n', 'v' }, '<M-z>', ':set wrap!<CR>', { silent = true })
vim.keymap.set('v', '<Tab>', '>gv<CR>')
vim.keymap.set('v', '<S-Tab>', '<gv<CR>')
vim.keymap.set('n', '<ESC>', ':nohl<CR>', { silent = true })
vim.keymap.set('n', '<Leader>j', ':vsplit<CR>')
vim.keymap.set('n', '<Leader>h', ':split<CR>')

-- Terminal
vim.keymap.set({ 'n', 'v' }, '<C-t>', ':split<CR>:ter<CR>:resize 15<CR>')

-- Size windows
vim.keymap.set('n', '<Leader>>', '10<C-w>>')
vim.keymap.set('n', '<Leader><', '10<C-w><')

-- editor
vim.keymap.set('n', 'tp', ':tabprevious<CR>')
vim.keymap.set('n', 'tn', ':tabnext<CR>')
vim.keymap.set('n', 'tf', ':tabfirst<CR>')
vim.keymap.set('n', 'tl', ':tablast<CR>')
vim.keymap.set('n', '<TAB>', ':tabnext<CR>')
vim.keymap.set('n', '<S-TAB>', ':tabprevious<CR>')

vim.keymap.set('n', '<Leader>b', ':NvimTreeToggle<CR>', opts)
vim.keymap.set('n', '--', '<plug>NERDCommenterToggle', opts)
vim.keymap.set('n', ')', '<Plug>(GitGutterNextHunk)', opts)
vim.keymap.set('n', '(', '<Plug>(GitGutterPrevHunk)', opts)

g.copilot_no_tab_map = true
map("i", "<C-J>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
