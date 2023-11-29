return {
  {
    "NvChad/nvterm",
    config = function()
      require("nvterm").setup()
    end,
    keys = {
      {
        "<leader>tf",
        function()
          require("nvterm.terminal").toggle("float")
        end,
        desc = "Float terminal",
      },
      {
        "<leader>th",
        function()
          require("nvterm.terminal").toggle("horizontal")
        end,
        desc = "Horizontal terminal",
      },
      {
        "<leader>tv",
        function()
          require("nvterm.terminal").toggle("vertical")
        end,
        desc = "Vertical terminal",
      },
    },
  },
}
