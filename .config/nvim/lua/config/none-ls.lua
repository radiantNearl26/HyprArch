local none_ls = require("none-ls")
local formatting = none_ls.builtins.formatting
local diagnostics = none_ls.builtins.diagnostics
local code_actions = none_ls.builtins.code_actions
local hover = none_ls.builtins.hover

none_ls.setup({
    sources = {
        -- Code Actions
        code_actions.proselint,
        code_actions.refactoring,

        -- Diagnostics
        diagnostics.cppcheck,
        diagnostics.proselint,
        diagnostics.pylint.with({
            diagnostics_postprocess = function(diagnostic)
                diagnostic.code = diagnostic.message_id
            end,
        }),
        diagnostics.selene,
        diagnostics.zsh,

        -- Formatting
        formatting.astyle,
        formatting.biome,
        formatting.ktlint,
        formatting.blackd,
        formatting.prettierd,
        formatting.rubocop,
        formatting.sqlfmt,
        formatting.yamlfmt,
        formatting.stylua,
        formatting.isort,

        -- Hover
        hover.dictionary,
        hover.printenv,
    },
    on_attach = function(client, bufnr)
        -- Format on save
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({
                        bufnr = bufnr,
                        filter = function(fmt_client)
                            return fmt_client.name == "none-ls"
                        end,
                    })
                end,
            })
        end
    end,
})
