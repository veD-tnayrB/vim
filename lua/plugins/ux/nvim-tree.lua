-- autopairs
-- Nvim tree
  return  {
      'nvim-tree/nvim-tree.lua',
      config = function()
        require('nvim-tree').setup {
          on_attach = function(bufnr)
            local api = require 'nvim-tree.api'
  
            local function opts(desc)
              return {
                desc = 'nvim-tree: ' .. desc,
                buffer = bufnr,
                noremap = true,
                silent = true,
                nowait = true,
              }
            end
  
            -- default mappings
            api.config.mappings.default_on_attach(bufnr)
  
            -- custom mappings
            vim.keymap.set('n', 't', api.node.open.tab, opts 'Tab')
          end,
          actions = {
            open_file = {
              quit_on_open = true,
            },
          },
          update_focused_file = {
            enable = true,
            update_root = true,
          },
          sort = {
            sorter = 'case_sensitive',
          },
          view = {
            width = 300,
            relativenumber = true,
          },
          renderer = {
            group_empty = true,
          },
          filters = {
            custom = {
              'node_modules/.*',
              '^.git$'
            },
            dotfiles = false 
          },
          log = {
            enable = true,
            truncate = true,
            types = {
              diagnostics = true,
              git = true,
              profile = true,
              watcher = true,
            },
          },
        }
  
        if vim.fn.argc(-1) == 0 then
          vim.cmd 'NvimTreeFocus'
        end
      end,
    }

