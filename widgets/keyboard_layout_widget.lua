local awful = require("awful")
local text_and_widget_pair = require("widgets.text_and_widget_pair")

return text_and_widget_pair({text = "󰧺", widget = awful.widget.keyboardlayout(), font_size = 24})