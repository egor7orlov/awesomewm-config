local wibox = require("wibox")
local text_and_widget_pair = require("widgets.text_and_widget_pair")

return text_and_widget_pair({text = "", widget = wibox.widget.textclock()})