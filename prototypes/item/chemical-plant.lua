local function createPlant(version)
    local cp = table.deepcopy(data.raw.item["chemical-plant"])
    cp.name = "logistic-chemical-plant-" .. version
    if mods["bobassembly"] then
        if version == 1 then
            cp.icons = { { icon = "__bobassembly__/graphics/icons/chemical-plant-3.png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        elseif version == 2 then
            cp.icons = { { icon = "__bobassembly__/graphics/icons/new-colors/chemical-plant-2.png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        elseif version == 3 then
            cp.icons = { { icon = "__bobassembly__/graphics/icons/chemical-plant-2.png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        else
            cp.icons = { { icon = data.raw["assembling-machine"]["chemical-plant-" .. version].icon }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        end
    else
        cp.icons = { { icon = data.raw["assembling-machine"]["chemical-plant"].icon, icon_size = 64 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    end
    cp.icon_size = 32
    cp.place_result = cp.name
    cp.flags = {"draw-logistic-overlay"}
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
