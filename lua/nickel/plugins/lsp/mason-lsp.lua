--local on_attach = function(_, _)
--    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
--    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
--    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
--end
--
--return {
--    require("mason").setup(),
--    require("mason-lspconfig").setup({
--        ensure_installed = { "lua_ls" }
--    }),
--    require("lspconfig").lua_ls.setup {
--        on_attach = on_attach
--    }
--}

return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
        "WhoIsSethDaniel/mason-tool-installer.nvim",
    },
    config = function()
        -- import mason
        local mason = require("mason")

        -- import mason-lspconfig
        local mason_lspconfig = require("mason-lspconfig")

        local mason_tool_installer = require("mason-tool-installer")

        -- enable mason and configure icons
        mason.setup({
            ui = {
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },
        })

        mason_lspconfig.setup({
            -- list of servers for mason to install
            ensure_installed = {
                "lua_ls",
                "pyright", -- Python
                "gopls", -- Go
                "jdtls", -- Java
                "clangd", -- C/C++
                "dockerls", -- Docker
                "docker_compose_language_service", -- Docker Compose
                "bashls", -- Bash

                -- Frontend
                "tsserver", -- JS/TS
                "html",
                "cssls",
                "tailwindcss",
                "svelte",
                "graphql",
            },

            automatic_installation = true, -- auto install configured servers
        })

        mason_tool_installer.setup({
            ensure_installed = {
                "prettier", -- prettier formatter
                "stylua", -- lua formatter
                "isort", -- python formatter
                "black", -- python formatter
                "pylint",
                "eslint_d",
            },
        })
    end,
}
