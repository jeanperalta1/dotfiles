return {
  "brianhuster/live-preview.nvim",
  dependencies = { "folke/snacks.nvim" },
  cmd = "LivePreview",
  keys = {
    { "<leader>lp", "<cmd>LivePreview start<cr>", desc = "Live Preview" },
    { "<leader>lc", "<cmd>LivePreview close<cr>", desc = "Close Live Preview" },
  },
}
