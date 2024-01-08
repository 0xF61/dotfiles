return {
  "vimwiki/vimwiki",
  init = function()
    vim.g.vimwiki_list = {
      {
        path = "~/Documents/mywiki",
        syntax = "markdown",
        ext = ".md",
      },
    }
  end,
}
