local M = {}

local explorer_filetypes = {
    "NvimTree",
    "neo-tree",
    "oil",
    "minifiles",
    "netrw",
}

local function handle_leader_as()
    local ft = vim.bo.filetype
    if vim.tbl_contains(explorer_filetypes, ft) then
        vim.cmd("ClaudeCodeTreeAdd")
    else
        vim.notify("Use visual mode to send selection to Claude", vim.log.levels.INFO)
    end
end

function M.setup()
    vim.pack.add({
        { src = "https://github.com/folke/snacks.nvim" },
        { src = "https://github.com/coder/claudecode.nvim" }
    })

    require("claudecode").setup({
        config = true
    })

    vim.keymap.set("n", "<leader>cc",  "<cmd>ClaudeCode<cr>", { desc = "Toggle Claude" })
    vim.keymap.set("n", "<leader>ccf", "<cmd>ClaudeCodeFocus<cr>", { desc = "Focus Claude" })
    vim.keymap.set("n", "<leader>ccr", "<cmd>ClaudeCode --resume<cr>", { desc = "Resume Claude" })
    vim.keymap.set("n", "<leader>ccC", "<cmd>ClaudeCode --continue<cr>", { desc = "Continue Claude" })
    vim.keymap.set("n", "<leader>ccm", "<cmd>ClaudeCodeSelectModel<cr>", { desc = "Select Claude model" })
    vim.keymap.set("n", "<leader>ccb", "<cmd>ClaudeCodeAdd %<cr>", { desc = "Add current buffer" })
    vim.keymap.set("n", "<leader>ccs", "<cmd>ClaudeCodeSend<cr>", { desc = "Send to Claude" })
    vim.keymap.set("v", "<leader>ccs", handle_leader_as, { desc = "Add file" })
    vim.keymap.set("n", "<leader>cca", "<cmd>ClaudeCodeDiffAccept<cr>", { desc = "Acceptt diff" })
    vim.keymap.set("n", "<leader>ccd", "<cmd>ClaudeCodeDiffDeny<cr>", { desc = "Deny diff" })

end

return M
