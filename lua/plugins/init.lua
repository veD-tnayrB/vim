-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    require('plugins.ux.nvim-tree'),
    require('plugins.ux.auto-completion'),
    require('plugins.ux.codeium'),
    require('plugins.ux.comments'),
    require('plugins.ux.gitsigns'),
    require('plugins.ux.inc-rename'),
    require('plugins.ux.mini'),
    require('plugins.ux.tabs'),
    require('plugins.ux.telescope'),
    require('plugins.ux.wich-key'),
    require('plugins.ui.theme'),
    require('plugins.ui.nvim-web-devicons'),
    require('plugins.ui.todo-highlights'),
    require('plugins.ui.treesitter'),
    require('plugins.lsp.config'),
    require('plugins.formatters.prettier-config'),
    require('plugins.formatters.prettier'),
}
