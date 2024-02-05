-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- undo some lazyvim maps and add my own
vim.keymap.del("n", "<leader>l")
vim.keymap.set("n", "<leader>lz", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- defaults are [q and ]q
vim.keymap.set("n", "<leader>qN", vim.cmd.cprev, { desc = "previous quickfix" })
vim.keymap.set("n", "<leader>qn", vim.cmd.cnext, { desc = "next quickfix" })

-- defaults are again bracket based
local diagnostic_goto = function(next, severity)
  local go = next and vim.diagnostic.goto_next or vim.diagnostic.goto_prev
  severity = severity and vim.diagnostic.severity[severity] or nil
  return function()
    go({ severity = severity })
  end
end
vim.keymap.set("n", "nd", diagnostic_goto(true), { desc = "Next Diagnostic" })
vim.keymap.set("n", "Nd", diagnostic_goto(false), { desc = "Prev Diagnostic" })
vim.keymap.set("n", "ne", diagnostic_goto(true, "ERROR"), { desc = "Next Error" })
vim.keymap.set("n", "Ne", diagnostic_goto(false, "ERROR"), { desc = "Prev Error" })
vim.keymap.set("n", "nw", diagnostic_goto(true, "WARN"), { desc = "Next Warning" })
vim.keymap.set("n", "Nw", diagnostic_goto(false, "WARN"), { desc = "Prev Warning" })

-- this is a quit all by default, dangerous...
vim.keymap.del("n", "<leader>qq")
