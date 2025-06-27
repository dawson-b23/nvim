return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local lualine = require("lualine")
    local lazy_status = require("lazy.status") -- to configure lazy pending updates count

    -- configure lualine with modified theme
    lualine.setup({
      options = {
        theme = "auto",
      },
      sections = {
        lualine_c = {
          {
            "harpoon2",
            indicators = { "a", "s", "q", "w" },
            active_indicators = { "[A]", "[S]", "[Q]", "[W]" },
            color_active = { fg = "#00ff00" },
            _separator = " ",
          },
        },  
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = "#ff9e64" },
          },
          { "filetype" },
        },
      },
    })
  end,
}
