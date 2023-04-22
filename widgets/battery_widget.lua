local watch = require("awful.widget.watch")
local wibox = require("wibox")
local text_and_widget_pair = require("widgets.text_and_widget_pair")
local battery_power_widget = text_and_widget_pair({text = " ", widget = wibox.widget.textbox, font_size = 14}) -- Unknown power level icon

watch(
    "acpi",
    60,
    function(widget, stdout)
        local charge_percents_with_sign = string.match(stdout, '%d+%%')
        local charge_percents = tonumber(charge_percents_with_sign:gsub("%%", ""), 10)
        widget.widget.text = string.format("%s", charge_percents_with_sign)

        if stdout:match("Charging") then
            widget.icon.text = " " -- Charging icon
        elseif charge_percents < 20 then
           widget.icon.text = " " -- Low battery icon
        elseif charge_percents < 35 then
            widget.icon.text = " " -- A little more energy icon
        elseif charge_percents < 50 then
            widget.icon.text = " " -- Almost half icon
        elseif charge_percents < 75 then
            widget.icon.text = " " -- Half icon
        elseif charge_percents < 90 then
            widget.icon.text = " " -- Almost full icon
        elseif charge_percents <= 100 then
            widget.icon.text = " " -- Full icon
        end
    end,
    battery_power_widget
)

return battery_power_widget
