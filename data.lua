logistic_requester_chest_mask = { icon = data.raw.item["logistic-chest-requester"].icon, scale = 0.25, shift = { -10, -10 }, icon_size = 64 }
logistic_provider_chest_mask = { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = 0.25, shift = { 10, -10 }, icon_size = 64 }

logistic_requester_chest_mask_tech = { icon = data.raw.item["logistic-chest-requester"].icon, scale = 0.75, shift = { -35, -40 }, icon_size = 64 }
logistic_provider_chest_mask_tech = { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = 0.75, shift = { 35, -40 }, icon_size = 64 }

function lm_localised_name(entity, version)
    return { "entity-name." .. entity, "" .. version .. "" }
end

lm_entity_localised_description_main = {
    "entity-description.main-description",
    { "control-inputs.lm-open-requester" },
    { "control-inputs.lm-open-requester-inserter" },
    { "control-inputs.lm-open-provider" },
    { "control-inputs.lm-open-provider-inserter" },
}

lm_entity_localised_description_lab = {
    "entity-description.lab-description",
    { "control-inputs.lm-open-requester" },
    { "control-inputs.lm-open-requester-inserter" },
}

lm_item_localised_description_main = {
    "item-description.main-description",
    { "control-inputs.lm-open-requester" },
    { "control-inputs.lm-open-requester-inserter" },
    { "control-inputs.lm-open-provider" },
    { "control-inputs.lm-open-provider-inserter" },
}

lm_item_localised_description_lab = {
    "item-description.lab-description",
    { "control-inputs.lm-open-requester" },
    { "control-inputs.lm-open-requester-inserter" },
}

require("prototypes.init")
require("prototypes.invisible")

data:extend({
    {
        type = "custom-input",
        name = "lm-open-requester",
        key_sequence = "CONTROL + SHIFT + mouse-button-1",
        consuming = "none"
    },
    {
        type = "custom-input",
        name = "lm-open-requester-inserter",
        key_sequence = "CONTROL + SHIFT + ALT + mouse-button-1",
        consuming = "none"
    },
    {
        type = "custom-input",
        name = "lm-open-provider",
        key_sequence = "CONTROL + SHIFT + mouse-button-2",
        consuming = "none"
    },
    {
        type = "custom-input",
        name = "lm-open-provider-inserter",
        key_sequence = "CONTROL + SHIFT + ALT + mouse-button-2",
        consuming = "none"
    },
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
