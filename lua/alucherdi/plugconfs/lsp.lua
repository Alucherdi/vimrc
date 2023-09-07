local lsp = require('lspconfig')
local util = require('lspconfig/util')

vim.keymap.set('n', '<space>d', vim.diagnostic.open_float)
vim.keymap.set('n', '[g', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']g', vim.diagnostic.goto_next)
vim.keymap.set('n', '<space>q', vim.diagnostic.setloclist)

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        vim.bo[ev.buf].omnifunc = 'v:lua.vim.lsp.omnifunc'

        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        client.server_capabilities.semanticTokensProvider = nil

        local tsgd = '<cmd>tab split | lua vim.lsp.buf.definition()<cr>'
        local vsgd = '<cmd>vsplit | lua vim.lsp.buf.definition()<cr>'
        local sgd = '<cmd>split | lua vim.lsp.buf.definition()<cr>'

        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'gt', tsgd, opts)
        vim.keymap.set('n', 'g_', sgd, opts)
        vim.keymap.set('n', 'g-', vsgd, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        --vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)
        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)
        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)
    end,
})

local capabilities = vim.lsp.protocol.make_client_capabilities()

capabilities.textDocument.completion.completionItem.snippetSupport = true

lsp.lua_ls.setup {
    on_init = function(client)
        client.config.settings = vim.tbl_deep_extend("force", client.config.settings.Lua, {
            workspace = {
                library = { vim.env.VIMRUNTIME },
                checkThirdParty = true,
            }
        })
    end
}

lsp.html.setup {}
lsp.pylsp.setup {}
lsp.emmet_ls.setup {}
lsp.cssls.setup {capabilities = capabilities}

lsp.ocamlls.setup {}

lsp.tsserver.setup {}
lsp.svelte.setup {}

lsp.jdtls.setup {}
lsp.dartls.setup {
    root_dir = util.root_pattern("pubspec.yaml", "*.dart", "main.dart")
}
lsp.rust_analyzer.setup {}
lsp.clangd.setup {}
lsp.cmake.setup {}

lsp.zls.setup {}
