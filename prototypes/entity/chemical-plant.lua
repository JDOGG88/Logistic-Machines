function createPlant1(version)
    local cp = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
    cp.name = "logistic-chemical-plant-" .. version
    cp.minable = { hardness = 0.2, mining_time = 0.5, result = "logistic-chemical-plant-" .. version }
    cp.icons = { { icon = data.raw["assembling-machine"]["chemical-plant"].icon, icon_size = 64 }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
    cp.icon_size = 32
    cp.selection_box = { { -1.5, -0.75 }, { 1.5, 1.5 } }
    return cp
end

if mods["bobassembly"] then
    function createPlant(version)
        local cp = table.deepcopy(data.raw["assembling-machine"]["chemical-plant-" .. version])
        cp.name = "logistic-chemical-plant-" .. version
        cp.minable = { hardness = 0.2, mining_time = 0.5, result = "logistic-chemical-plant-" .. version }
        if version == 1 then
            cp.icons = { { icon = "__bobassembly__/graphics/icons/chemical-plant-3.png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        elseif version == 2 then
            cp.icons = { { icon = "__bobassembly__/graphics/icons/new-colors/chemical-plant-2.png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        elseif version == 3 then
            cp.icons = { { icon = "__bobassembly__/graphics/icons/chemical-plant-2.png" }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        else
            cp.icons = { { icon = data.raw["assembling-machine"]["chemical-plant-" .. version].icon }, logistic_requester_chest_mask, logistic_provider_chest_mask, }
        end
        cp.icon_size = 32
        cp.selection_box = { { -1.5, -0.75 }, { 1.5, 1.5 } }
        return cp
    end

    data.raw["assembling-machine"]["chemical-plant"].animation = bob_chemical_plant_animation({ r = 0.7, g = 0.2, b = 0.1 })
    data.raw["assembling-machine"]["chemical-plant-2"].animation = bob_chemical_plant_animation({ r = 0.1, g = 0.5, b = 0.7 })
    data.raw["assembling-machine"]["chemical-plant-3"].animation = bob_chemical_plant_animation({ r = 0.7, g = 0.1, b = 0.7 })
end

if not mods["bobassembly"] then
    local logistic_chemical_plant_1 = createPlant1(1)
    data:extend({
        logistic_chemical_plant_1,
    })
else
    local logistic_chemical_plant_1 = createPlant1(1)
    local logistic_chemical_plant_2 = createPlant(2)
    local logistic_chemical_plant_3 = createPlant(3)
    local logistic_chemical_plant_4 = createPlant(4)
    data:extend({
        logistic_chemical_plant_1,
        logistic_chemical_plant_2,
        logistic_chemical_plant_3,
        logistic_chemical_plant_4,
    })
end
