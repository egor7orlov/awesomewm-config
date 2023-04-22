local wibox = require("wibox")
local gears = require("gears")
local theme = require("themes.default.theme")

return function(config)
    return {
        {
            config.widget,
            bg = theme.color_bright .. "00",
            fg = theme.color_brightest,
            -- shape = gears.shape.rounded_rect,
            forced_width = config.width,
            widget = wibox.container.background,
        },
        right = config.margin_right or 15,
        widget = wibox.container.margin,
    }
end
