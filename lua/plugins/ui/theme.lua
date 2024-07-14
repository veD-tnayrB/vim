return {

    'ellisonleao/gruvbox.nvim',
    priority = 1000,
		config = function()
      require("gruvbox").setup({
        contrast = "hard",
         palette_overrides = {
          dark0_hard = "#1d2021",
        },
      })
    end,
    init = function()
      vim.o.background = 'dark' -- or "light" for light mode
      vim.cmd [[colorscheme gruvbox]]
    end,
  }
