local function createPlant(version)
    local cp = table.deepcopy(data.raw.item["chemical-plant"])
    cp.name = "logistic-chemical-plant-" .. version
    if version == 1 then
        cp.icons = { { icon = data.raw["assembling-machine"]["chemical-plant"].icon }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    else
        cp.icons = { { icon = data.raw["assembling-machine"]["chemical-plant-" .. version].icon }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    end
    cp.place_result = cp.name
    cp.flags = { "draw-logistic-overlay" }
    cp.localised_name = lm_localised_name("logistic-chemical-plant", version)
    cp.localised_description = lm_localised_description_main
    return cp
end

if not mods["bobassembly"] then
    data:extend({
        createPlant(1),
    })
else
    data:extend({
        createPlant(1),
        createPlant(2),
        createPlant(3),
        createPlant(4),
    })
end
