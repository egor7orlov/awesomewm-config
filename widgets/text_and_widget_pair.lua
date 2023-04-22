local wibox = require("wibox")

local function text_and_widget_pair(pair_config)
    local icon_widget = wibox.widget {
        widget = wibox.widget.textbox,
        text = string.format("%s", pair_config.text),
        halign = "center",
        valign = "center",
        font = string.format("Caskaydia Cove Nerd Font Mono %s", pair_config.font_size or 20)
    }

    return wibox.widget {
        {
            widget = icon_widget,
            id = "icon"
        },
        {
            widget = pair_config.widget,
            id = "widget"
        },
        layout = wibox.layout.fixed.horizontal,
    }
end

return text_and_widget_pair
