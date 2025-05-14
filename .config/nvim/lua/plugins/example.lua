return {
  "yetone/avante.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        file_types = { "markdown", "Avante" },
      },
      ft = { "markdown", "Avante" },
    },
  },
  build = "make",
  opts = {
    provider = "copilot",
    copilot = {
      endpoint = "https://api.githubcopilot.com",
      model = "claude-3.7-sonnet-thought",
    },
  },
}
