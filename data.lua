mask_scale = 0.25
requester_mask_shift = { -10, -10 }
provider_mask_shift = { 10, -10 }
icon_size = 64

require("prototypes.entity")
require("prototypes.item")
require("prototypes.recipe")
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
})

if mods["bobassembly"] then
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
