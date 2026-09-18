return {
    "mason-org/mason.nvim",
    build = ":MasonUpdate", -- :MasonUpdate updates registry contents,
    dependencies = { 'neovim/nvim-lspconfig'}
}
