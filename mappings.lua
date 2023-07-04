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
  },
}

M.dap = {
  n = {
    ["<F5>"] = {
      function()
        require("dap").continue()
      end,
      "Debugger: Start",
    },
    ["<leader>db"] = {
      function()
        require("dap").toggle_breakpoint()
      end,
      "Toggle Breakpoint (F9)",
    },
    ["<leader>dB"] = {
      function()
        require("dap").clear_breakpoints()
      end,
      "Clear Breakpoints",
    },
    ["<leader>dc"] = {
      function()
        require("dap").continue()
      end,
      "Debugger: Continue (F5)",
    },
    ["<leader>di"] = {
      function()
        require("dap").step_into()
      end,
      "Debugger: Step Into (F11)",
    },
    ["<leader>do"] = {
      function()
        require("dap").step_over()
      end,
      "Debugger: Step Over (F10)",
    },
    ["<leader>dO"] = {
      function()
        require("dap").step_out()
      end,
      "Debugger: Step Out (S-F11)",
    },
    ["<leader>dq"] = {
      function()
        require("dap").close()
      end,
      "Close Session",
    },
    ["<leader>dQ"] = {
      function()
        require("dap").terminate()
      end,
      "Terminate Session (S-F5)",
    },
    ["<leader>dp"] = {
      function()
        require("dap").pause()
      end,
      "Pause (F6)",
    },
    ["<leader>dr"] = {
      function()
        require("dap").restart_frame()
      end,
      "Restart (C-F5)",
    },
    ["<leader>dR"] = {
      function()
        require("dap").repl.toggle()
      end,
      "Toggle REPL",
    },
    ["<leader>ds"] = {
      function()
        require("dap").run_to_cursor()
      end,
      "Run To Cursor",
    },
    ["<leader>dE"] = {
      function()
        vim.ui.input({ prompt = "Expression: " }, function(expr)
          if expr then
            require("dapui").eval(expr)
          end
        end)
      end,
      "Evaluate Input",
    },
    ["<leader>de"] = {
      function()
        require("dapui").eval()
      end,
      "Evaluate Input",
    },
    ["<leader>du"] = {
      function()
        require("dapui").toggle()
      end,
      "Toggle Debugger UI",
    },
    ["<leader>dh"] = {
      function()
        require("dap.ui.widgets").hover()
      end,
      "Debugger Hover",
    },
  },
}
-- more keybinds!

return M
