local function createPlant(version)
    local cp
    if version == 1 then
        cp = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
    else
        cp = table.deepcopy(data.raw["assembling-machine"]["chemical-plant-" .. version])
    end
    cp.name = "logistic-chemical-plant-" .. version
    cp.minable = { hardness = 0.2, mining_time = 0.5, result = cp.name }
    if not mods["bobassembly"] then
        cp.icons = { { icon = data.raw["assembling-machine"]["chemical-plant"].icon, icon_size = 64 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    else
        if version == 1 then
            cp.icons = { { icon = "__bobassembly__/graphics/icons/chemical-plant-3.png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        elseif version == 2 then
            cp.icons = { { icon = "__bobassembly__/graphics/icons/new-colors/chemical-plant-2.png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        elseif version == 3 then
            cp.icons = { { icon = "__bobassembly__/graphics/icons/chemical-plant-2.png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        else
            cp.icons = { { icon = data.raw["assembling-machine"]["chemical-plant-" .. version].icon }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        end
    end
    cp.icon_size = 32
    cp.localised_name = lm_localised_name("logistic-chemical-plant", version)
    cp.localised_description = lm_localised_description_main
    return cp
end

if not mods["bobassembly"] then
    data:extend({
        createPlant(1),
    })
else
    data.raw["assembling-machine"]["chemical-plant"].animation = bob_chemical_plant_animation({ r = 0.7, g = 0.2, b = 0.1 })
    data.raw["assembling-machine"]["chemical-plant-2"].animation = bob_chemical_plant_animation({ r = 0.1, g = 0.5, b = 0.7 })
    data.raw["assembling-machine"]["chemical-plant-3"].animation = bob_chemical_plant_animation({ r = 0.7, g = 0.1, b = 0.7 })
    data:extend({
        createPlant(1),
        createPlant(2),
        createPlant(3),
        createPlant(4),
    })
end
