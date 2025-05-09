require("nvim-treesitter.configs").setup({
  ensure_installed = {
    "lua", "java", "kotlin", "bash", "json", "yaml", "markdown", "html", "css", "javascript",
  },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
  indent = {
    enable = true,
  },
})
