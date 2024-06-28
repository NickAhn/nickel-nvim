local on_attach = function(_, _)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end

return {
    require("mason").setup(),
    require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" }
    }),
    require("lspconfig").lua_ls.setup {
        on_attach = on_attach
    }
}
