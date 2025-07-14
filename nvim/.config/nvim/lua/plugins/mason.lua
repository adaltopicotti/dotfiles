return {
    "mason-org/mason.nvim",
    dependencies = {
      "mason-org/mason-lspconfig.nvim", -- Optional: for LSP server management
    },
    opts = {
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        }
    },
    config = function(_, opts)
      require("mason").setup(opts)
      
      
    end,
}