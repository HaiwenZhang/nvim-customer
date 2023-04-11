---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>ws"] = { "<cmd> split <CR>", "Horizontal split window" },
    ["<leader>wv"] = { "<cmd> vsplit <CR>", "Vertical split window" },
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
    ["<leader>gm"] = { "<cmd> Neogit <CR>", "Open Neogit" },
  },
}

-- more keybinds!

return M
