local base46 = require "base46"

local M = {}

M.base30 = {
    white = "#ffffff",
    black = "#0c0c0d",
    darker_black = "", -- 6% darker than black
    black2 = "", -- 6% lighter than black
    one_bg = "", -- 10% lighter than black
    one_bg2 = "", -- 6% lighter than one_bg2
    one_bg3 = "", -- 6% lighter than one_bg3
    grey = "", -- 40% lighter than black (the % here depends so choose the perfect grey!)
    grey_fg = "", -- 10% lighter than grey
    grey_fg2 = "", -- 5% lighter than grey
    light_grey = "",
    red = "",
    baby_pink = "",
    pink = "",
    line = "", -- 15% lighter than black
    green = "",
    vibrant_green = "",
    nord_blue = "",
    blue = "",
    seablue = "",
    yellow = "", -- 8% lighter than yellow
    sun = "",
    purple = "",
    dark_purple = "",
    teal = "",
    orange = "",
    cyan = "",
    statusline_bg = "",
    lightbg = "",
    pmenu_bg = "",
    folder_bg = ""
}

base46.override_theme(M, "NvCloud")
