vim.pack.add {
	{ src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/mason-org/mason.nvim" },
	{ src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
}

require("mason").setup()
require("mason-lspconfig").setup()

vim.lsp.completion.enable()
vim.lsp.enable({
	"lua_ls",
	"clangd",
	"oxlint",
	"ts_ls",
	"rust_analyzer",
})
