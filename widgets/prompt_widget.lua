local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")
local theme = require("themes.default.theme")
local prompt = awful.widget.prompt {
    prompt = "❯ ",
    bg = theme.color_darkest,
    fg = theme.color_brightest,
}

return prompt
