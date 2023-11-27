---@type ChadrcConfig
local M = {}

M.ui = {
    theme = 'onedark',
    hl_override = {
        NvDashAscii = { bg = "NONE", fg = 'white' },
    },
    tabufline = {
        -- show_numbers = false,
        enabled = false,
        -- lazyload = true,
        -- overriden_modules = nil,
    },
    nvdash = require 'custom.configs.nvdash',
    transparency = true,
}

M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
