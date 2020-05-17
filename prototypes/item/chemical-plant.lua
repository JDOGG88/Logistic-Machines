function createPlant(version)
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
    cp.place_result = "logistic-chemical-plant-" .. version
    return cp
end

if not mods["bobassembly"] then
    local logistic_chemical_plant_1 = createPlant(1)
    data:extend({
        logistic_chemical_plant_1,
    })
else
    local logistic_chemical_plant_1 = createPlant(1)
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
