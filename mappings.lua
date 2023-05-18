---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

M.hop = {
  n = {
    ["<leader>ja"] = { "<cmd> HopAnywhere <CR>", "Hop Any Where" },
    ["<leader>jw"] = { "<cmd> HopWord <CR>", "Hop word" },
    ["<leader>jl"] = { "<cmd> HopLine <CR>", "Hop line" },
  },
}

M.neogit = {
  n = {
    ["<leader>gn"] = { "<cmd> Neogit <CR>", "Open Neogit" },
  },
}

M.nvterm = {
  n = {
    ["<leader>tt"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "toggle floating term",
    },
  }
}

-- more keybinds!

return M
