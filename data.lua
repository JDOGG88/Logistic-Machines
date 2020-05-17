local mask_scale = 0.25
local requester_mask_shift = { -10, -10 }
local provider_mask_shift = { 10, -10 }
local icon_size = 64

logistic_requester_chest_mask = { icon = data.raw.item["logistic-chest-requester"].icon, scale = mask_scale, shift = requester_mask_shift, icon_size = icon_size }
logistic_provider_chest_mask = { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = mask_scale, shift = provider_mask_shift, icon_size = icon_size }

require("prototypes.init")
require("prototypes.invisible")
require("prototypes.technology")

data:extend({
    {
        type = "item-subgroup",
        name = "logistic-assembling-machines",
        group = "production",
        order = "e-b-b",
    },
    {
        type = "item-subgroup",
        name = "logistic-chemical-plants",
        group = "production",
        order = "e-c-b",
    },
    {
        type = "item-subgroup",
        name = "logistic-electrolysers",
        group = "production",
        order = "e-d-b",
    },
})

if mods["bobassembly"] then
    if mods["bobplates"]then
        data.raw.recipe["logistic-electrolyser-2"].subgroup = "logistic-electrolysers"
        data.raw.recipe["logistic-electrolyser-2"].order = "c-a"
        data.raw.recipe["logistic-electrolyser-3"].subgroup = "logistic-electrolysers"
        data.raw.recipe["logistic-electrolyser-3"].order = "c-b"
        data.raw.recipe["logistic-electrolyser-4"].subgroup = "logistic-electrolysers"
        data.raw.recipe["logistic-electrolyser-4"].order = "c-c"
        data.raw.recipe["logistic-electrolyser-5"].subgroup = "logistic-electrolysers"
        data.raw.recipe["logistic-electrolyser-5"].order = "c-d"
    end
    data.raw.recipe["logistic-assembling-machine-3"].subgroup = "logistic-assembling-machines"
    data.raw.recipe["logistic-assembling-machine-3"].order = "a-a"
    data.raw.recipe["logistic-assembling-machine-4"].subgroup = "logistic-assembling-machines"
    data.raw.recipe["logistic-assembling-machine-4"].order = "a-b"
    data.raw.recipe["logistic-assembling-machine-5"].subgroup = "logistic-assembling-machines"
    data.raw.recipe["logistic-assembling-machine-5"].order = "a-c"
    data.raw.recipe["logistic-assembling-machine-6"].subgroup = "logistic-assembling-machines"
    data.raw.recipe["logistic-assembling-machine-6"].order = "a-d"
    data.raw.recipe["logistic-chemical-plant-1"].subgroup = "logistic-chemical-plants"
    data.raw.recipe["logistic-chemical-plant-1"].order = "b-a"
    data.raw.recipe["logistic-chemical-plant-2"].subgroup = "logistic-chemical-plants"
    data.raw.recipe["logistic-chemical-plant-2"].order = "b-b"
    data.raw.recipe["logistic-chemical-plant-3"].subgroup = "logistic-chemical-plants"
    data.raw.recipe["logistic-chemical-plant-3"].order = "b-c"
    data.raw.recipe["logistic-chemical-plant-4"].subgroup = "logistic-chemical-plants"
    data.raw.recipe["logistic-chemical-plant-4"].order = "b-d"
else
    data.raw.recipe["logistic-assembling-machine-3"].subgroup = "logistic-assembling-machines"
    data.raw.recipe["logistic-assembling-machine-3"].order = "a-a"
    data.raw.recipe["logistic-chemical-plant-1"].subgroup = "logistic-assembling-machines"
    data.raw.recipe["logistic-chemical-plant-1"].order = "b-a"
end
