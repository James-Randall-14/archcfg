---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files #
local highlights = require "custom.highlights"

M.ui = {
  hl_override = {
    LineNr = { fg = "white" },
    CursorLineNr = { fg = "grey_fg" },
    CursorLine = { bg = "one_bg2" },
  },
  changed_themes = {
    nord = {
      base_16 = {
        base00 = "#3B4252", -- Lighten the background a bit
        base01 = "#2E3440", -- Lighten the darker background a bit 
      },
      base_30 = {
        black = "#3B4252", -- Lighten the background a bit
        darker_black = "#2E3440", -- Lighten the darker background a bit
        grey_fg = "#D8DEE9",
      },
    },
  },
  theme = "nord",
  theme_toggle = { "nord" },

  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
