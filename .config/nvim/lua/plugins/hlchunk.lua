return {
  {
    "shellRaining/hlchunk.nvim",
    event = "BufReadPre",
    opts = {
      chunk = {
        enable = true,
      },
      indent = {
        enable = true,
      },
      line_num = {
        enable = true,
      },
    },
  },
}
