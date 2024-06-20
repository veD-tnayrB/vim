return {
    'MunifTanjim/prettier.nvim',
    opts = {},
    config = function()
      require('prettier').setup {
        cli_options = {
          jsx_single_quote = false,
          semi = true,
          single_quote = true,
          arrow_parens = 'always',
          print_width = 120,
          use_tabs = true,
          bracket_spacing = true,
          jsx_bracket_same_line = false,
          tab_width = 4,
          prose_wrap = 'always',
        },
        bin = 'prettier',
        filetypes = {
          'css',
          'graphql',
          'html',
          'javascript',
          'javascriptreact',
          'json',
          'less',
          'markdown',
          'scss',
          'typescript',
          'typescriptreact',
          'yaml',
        },
      }
    end,
  }