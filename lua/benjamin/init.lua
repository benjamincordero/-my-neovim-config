require("benjamin.set")
require("benjamin.remap")
require("benjamin.packer")
require("benjamin.telescope")
require("benjamin.treesitter")
require("benjamin.lsp")
require("benjamin.theme")
require("benjamin.harpoon")
require("benjamin.undotree")
require("benjamin.highlight_colors")

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
  [[                                                     ░█         ]],
  [[                                                     █░         ]],
  [[                                                                ]],
  [[██████╗░███████╗███╗░░██╗░░░░░██╗░█████╗░███╗░░░███╗██╗███╗░░██╗]],
  [[██╔══██╗██╔════╝████╗░██║░░░░░██║██╔══██╗████╗░████║██║████╗░██║]],
  [[██████╦╝█████╗░░██╔██╗██║░░░░░██║███████║██╔████╔██║██║██╔██╗██║]],
  [[██╔══██╗██╔══╝░░██║╚████║██╗░░██║██╔══██║██║╚██╔╝██║██║██║╚████║]],
  [[██████╦╝███████╗██║░╚███║╚█████╔╝██║░░██║██║░╚═╝░██║██║██║░╚███║]],
  [[╚═════╝░╚══════╝╚═╝░░╚══╝░╚════╝░╚═╝░░╚═╝╚═╝░░░░░╚═╝╚═╝╚═╝░░╚══╝]],

}

dashboard.section.buttons.val = {
  dashboard.button("f", "  Find file", ":Telescope find_files <CR>"),
  dashboard.button("e", "  New file", ":ene <BAR> startinsert <CR>"),
  dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
  dashboard.button("c", "  Configuration", ":edit ~/.config/nvim<CR>"),
  dashboard.button("q", "  Quit Neovim", ":qa<CR>"),
}

local function footer()
  return "Think twice, code once."
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
