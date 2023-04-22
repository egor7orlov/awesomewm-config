local awful = require("awful")
local wibox = require("wibox")
local gears = require("gears")

local function tasklist_widget(tasklist_config)
    return awful.widget.tasklist {
        screen          = tasklist_config.screen,
        filter          = awful.widget.tasklist.filter.currenttags,
        buttons         = tasklist_config.tasklist_buttons,
        layout          = {
            spacing = 10,
            layout  = wibox.layout.flex.horizontal,
        },
        style           = {
            shape = gears.shape.rounded_rect,
        },
        widget_template = {
            {
                {
                    {
                        {
                            {
                                id     = "icon_role",
                                widget = wibox.widget.imagebox,
                            },
                            top    = 3,
                            bottom = 3,
                            right  = 10,
                            widget = wibox.container.margin,
                        },
                        {
                            id     = "text_role",
                            widget = wibox.widget.textbox,
                        },
                        layout = wibox.layout.fixed.horizontal,
                    },
                    left   = 10,
                    right  = 10,
                    widget = wibox.container.margin
                },
                id     = "background_role",
                widget = wibox.container.background,
            },
            left   = 10,
            right  = 10,
            widget = wibox.container.margin
        },
    }
end

return tasklist_widget;
