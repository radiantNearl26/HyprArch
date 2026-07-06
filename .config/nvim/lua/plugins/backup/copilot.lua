return {
    "github/copilot.vim",
    -- disable copilot by default
    lazy = false,
    keys = { "<leader>ce" },
    config = function()
        vim.keymap.set("n", "<leader>cd", ":Copilot disable <CR>", {})
        vim.keymap.set("n", "<leader>ce", ":Copilot enable <CR>", {})
    end,
}
