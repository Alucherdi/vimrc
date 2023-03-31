local lsp = require('lspconfig')

local util = require('lspconfig/util')

local nbopts = { noremap = true, silent = true }
vim.keymap.set('n', '<space>e', vim.diagnostic.open_float, nbopts)
vim.keymap.set('n', '[g', vim.diagnostic.goto_prev, nbopts)
vim.keymap.set('n', ']g', vim.diagnostic.goto_next, nbopts)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist, nbopts)

local on_attach = function(client, bufnr)
    vim.api.nvim_buf_set_option(bufnr, 'omnifunc', 'v:lua.vim.lsp.omnifunc')

    local tsgd = '<cmd>tab split | lua vim.lsp.buf.definition()<cr>'
    local vsgd = '<cmd>vsplit | lua vim.lsp.buf.definition()<cr>'
    local sgd = '<cmd>split | lua vim.lsp.buf.definition()<cr>'

    local bufopts = { noremap=true, silent=true, buffer=bufnr }
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', 'gt', tsgd, bufopts)
    vim.keymap.set('n', 'g_', sgd, bufopts)
    vim.keymap.set('n', 'g-', vsgd, bufopts)
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
    --vim.keymap.set('n', '<C-s>', vim.lsp.buf.signature_help, bufopts)
    vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, bufopts)
    vim.keymap.set('n', '<space>wl', function()
          print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
    end, bufopts)
    vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, bufopts)
    vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, bufopts)
    vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, bufopts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
    vim.keymap.set('n', '<space>f', vim.lsp.buf.formatting, bufopts)
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.html.setup { on_attach = on_attach }
lsp.emmet_ls.setup { on_attach = on_attach }
lsp.cssls.setup {
    on_attach = on_attach,
    capabilities = capabilities
}

lsp.tsserver.setup { on_attach = on_attach }
lsp.svelte.setup { on_attach = on_attach }

lsp.jdtls.setup { on_attach = on_attach }
lsp.dartls.setup {
    on_attach = on_attach,
    root_dir = util.root_pattern("pubspec.yaml", "*.dart", "main.dart")
}
lsp.rust_analyzer.setup { on_attach = on_attach }
lsp.clangd.setup { on_attach = on_attach }
lsp.cmake.setup { on_attach = on_attach }
