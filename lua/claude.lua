local M = {}

function M.setup()
    vim.pack.add({
        { src = "https://github.com/folke/snacks.nvim" },
        { src = "https://github.com/coder/claudecode.nvim" }
    })

    require("claudecode").setup({
        config = true
    })

    vim.keymap.set("<leader>cc",  "<cmd>ClaudeCode<cr>", { desc = "Toggle Claude" })
    vim.keymap.set("<leader>ccf", "<cmd>ClaudeCodeFocus<cr>", { desc = "Focus Claude" })
    vim.keymap.set("<leader>ccr", "<cmd>ClaudeCode --resume<cr>", { desc = "Resume Claude" })
    vim.keymap.set("<leader>ccC", "<cmd>ClaudeCode --continue<cr>", { desc = "Continue Claude" })
    vim.keymap.set("<leader>ccm", "<cmd>ClaudeCodeSelectModel<cr>", { desc = "Select Claude model" })
    vim.keymap.set("<leader>ccb", "<cmd>ClaudeCodeAdd %<cr>", { desc = "Add current buffer" })
    vim.keymap.set("<leader>ccs", "<cmd>ClaudeCodeSend<cr>", { desc = "Send to Claude" })
    vim.keymap.set("<leader>ccs", "<cmd>ClaudeCodeTreeAdd<cr>", mode = "v", { desc = "Add file", ft = { "NvimTree", "neo-tree", "oil", "minifiles", "netrw" } })
    vim.keymap.set("<leader>cca", "<cmd>ClaudeCodeDiffAccept<cr>", { desc = "Acceptt diff" })
    vim.keymap.set("<leader>ccd", "<cmd>ClaudeCodeDiffDeny<cr>", { desc = "Deny diff" })

end

return M
