function createMachine(version)
    local cm = table.deepcopy(data.raw["item"]["assembling-machine-" .. version])
    cm.name = "logistic-assembling-machine-" .. version
    if mods["bobassembly"] then
        if version == 6 then
            cm.icons = {
                { icon = "__bobassembly__/graphics/icons/assembling-machine-" .. version .. ".png" },
                { icon = data.raw.item["logistic-chest-requester"].icon, scale = mask_scale, shift = requester_mask_shift, icon_size = icon_size },
                { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = mask_scale, shift = provider_mask_shift, icon_size = icon_size },
            }
        else
            cm.icons = {
                { icon = "__bobassembly__/graphics/icons/new-colors/assembling-machine-" .. version .. ".png" },
                { icon = data.raw.item["logistic-chest-requester"].icon, scale = mask_scale, shift = requester_mask_shift, icon_size = icon_size },
                { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = mask_scale, shift = provider_mask_shift, icon_size = icon_size },
            }
        end
    else
        cm.icons = {
            { icon = "__base__/graphics/icons/assembling-machine-" .. version .. ".png", icon_size = 64 },
            { icon = data.raw.item["logistic-chest-requester"].icon, scale = mask_scale, shift = requester_mask_shift, icon_size = icon_size },
            { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = mask_scale, shift = provider_mask_shift, icon_size = icon_size },
        }
    end
    cm.icon = "__Logistic-Machines__/graphics/logistic-assembling-machine.png"
    cm.icon_size = 32
    cm.place_result = "logistic-assembling-machine-" .. version
    return cm
end

if not mods["bobassembly"] then
    local logistic_assembling_machine_3 = createMachine(3)
    data:extend({
        logistic_assembling_machine_3,
    })
else
    local logistic_assembling_machine_3 = createMachine(3)
    local logistic_assembling_machine_4 = createMachine(4)
    local logistic_assembling_machine_5 = createMachine(5)
    local logistic_assembling_machine_6 = createMachine(6)
    data:extend({
        logistic_assembling_machine_3,
        logistic_assembling_machine_4,
        logistic_assembling_machine_5,
        logistic_assembling_machine_6,
    })
end

function createPlant(version)
    local cp = table.deepcopy(data.raw["item"]["chemical-plant"])
    cp.name = "logistic-chemical-plant-" .. version
    if mods["bobassembly"] then
        if version == 1 then
            cp.icons = {
                { icon = "__bobassembly__/graphics/icons/chemical-plant-3.png" },
                { icon = data.raw.item["logistic-chest-requester"].icon, scale = mask_scale, shift = requester_mask_shift, icon_size = icon_size },
                { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = mask_scale, shift = provider_mask_shift, icon_size = icon_size },
            }
        elseif version == 2 then
            cp.icons = {
                { icon = "__bobassembly__/graphics/icons/new-colors/chemical-plant-2.png" },
                { icon = data.raw.item["logistic-chest-requester"].icon, scale = mask_scale, shift = requester_mask_shift, icon_size = icon_size },
                { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = mask_scale, shift = provider_mask_shift, icon_size = icon_size },
            }
        elseif version == 3 then
            cp.icons = {
                { icon = "__bobassembly__/graphics/icons/chemical-plant-2.png" },
                { icon = data.raw.item["logistic-chest-requester"].icon, scale = mask_scale, shift = requester_mask_shift, icon_size = icon_size },
                { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = mask_scale, shift = provider_mask_shift, icon_size = icon_size },
            }
        else
            cp.icons = {
                { icon = data.raw["assembling-machine"]["chemical-plant-" .. version].icon },
                { icon = data.raw.item["logistic-chest-requester"].icon, scale = mask_scale, shift = requester_mask_shift, icon_size = icon_size },
                { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = mask_scale, shift = provider_mask_shift, icon_size = icon_size },
            }
        end
    else
        cp.icons = {
            { icon = data.raw["assembling-machine"]["chemical-plant"].icon, icon_size = 64 },
            { icon = data.raw.item["logistic-chest-requester"].icon, scale = mask_scale, shift = requester_mask_shift, icon_size = icon_size },
            { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = mask_scale, shift = provider_mask_shift, icon_size = icon_size },
        }
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

local assembling_provider_item = table.deepcopy(data.raw["item"]["logistic-chest-passive-provider"])
assembling_provider_item.name = "assembling-provider"
assembling_provider_item.place_result = "assembling-provider"

local assembling_requester_item = table.deepcopy(data.raw["item"]["logistic-chest-requester"])
assembling_requester_item.name = "assembling-requester"
assembling_requester_item.place_result = "assembling-requester"

data:extend({
    assembling_provider_item,
    assembling_requester_item,
    {
        type = "item",
        name = "invisible-inserter-1",
        icon = "__base__/graphics/icons/stack-inserter.png",
        icon_size = 32,
        subgroup = "inserter",
        order = "f[stack-inserter]",
        place_result = "invisible-inserter-1",
        stack_size = 50
    },
    {
        type = "item",
        name = "invisible-inserter-2",
        icon = "__base__/graphics/icons/stack-inserter.png",
        icon_size = 32,
        subgroup = "inserter",
        order = "f[stack-inserter]",
        place_result = "invisible-inserter-2",
        stack_size = 50
    },
    {
        type = "item",
        name = "invisible-substation",
        icon = "__base__/graphics/icons/substation.png",
        icon_size = 32,
        subgroup = "energy-pipe-distribution",
        order = "a[energy]-d[substation]",
        place_result = "invisible-substation",
        stack_size = 50
    },
})
