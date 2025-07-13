return {
    "mason-org/mason.nvim",
    dependencies = {
      "mason-org/mason-lspconfig.nvim", -- Optional: for LSP server management
      "mason-org/mason-tool-installer.nvim", -- Optional: for installing tools like linters, formatters, etc.
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
        local mason_tool_installer = require("mason-tool-installer")
        
      mason_tool_installer.setup({
        ensure_installed = { 
            "stylua", 
            "prettier", 
            "eslint_d",
            "black",
            "debugpy",
            "pyright",
            "gopls",
            "delve",
         }, -- Add your desired tools here
        auto_update = true, -- Automatically update tools
      })
      
    end,
}