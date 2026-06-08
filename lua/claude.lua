local M = {}

function M.setup()
    vim.pack.add({
        { srcs = "https://github.com/folke/snacks.nvim" },
        { srcs = "https://github.com/coder/claudecode.nvim" }
    })
end

return M
