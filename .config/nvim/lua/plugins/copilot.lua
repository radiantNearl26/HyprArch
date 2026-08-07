return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "InsertEnter",
    requires = {
        "copilotlsp-nvim/copilot-lsp", -- (optional) for NES functionality
    },
    opts = {
        suggestion = { enabled = true },
        panel = { enabled = true },
        filetypes = {
            markdown = true
        },
    },
    config = function()
        require("copilot").setup({})
    end,
}
