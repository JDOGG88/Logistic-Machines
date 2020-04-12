if mods["bobassembly"] then
    table.insert(data.raw["assembling-machine"]["assembling-machine-3"].animation.layers,
        {
            filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
            priority = "high",
            width = 142,
            height = 113,
            repeat_count = 32,
            shift = { 0.84, -0.09 },
            tint = { r = 0.7, g = 0.2, b = 0.1 }
        })
    data.raw["assembling-machine"]["assembling-machine-4"].animation =
    {
        layers =
        {
            {
                filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2.png",
                priority = "high",
                width = 108,
                height = 110,
                frame_count = 32,
                line_length = 8,
                shift = util.by_pixel(0, 4),
                hr_version =
                {
                    filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-2.png",
                    priority = "high",
                    width = 214,
                    height = 218,
                    frame_count = 32,
                    line_length = 8,
                    shift = util.by_pixel(0, 4),
                    scale = 0.5
                }
            },
            {
                filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-mask.png",
                priority = "high",
                width = 142,
                height = 113,
                repeat_count = 32,
                shift = { 0.84, -0.09 },
                tint = { r = 0.1, g = 0.5, b = 0.7 }
            },
            {
                filename = "__bobassembly__/graphics/entity/assembling-machine/assembling-machine-2-shadow.png",
                priority = "high",
                width = 98,
                height = 82,
                frame_count = 32,
                line_length = 8,
                draw_as_shadow = true,
                shift = util.by_pixel(12, 5),
                hr_version =
                {
                    filename = "__bobassembly__/graphics/entity/assembling-machine/hr-assembling-machine-2-shadow.png",
                    priority = "high",
                    width = 196,
                    height = 163,
                    frame_count = 32,
                    line_length = 8,
                    draw_as_shadow = true,
                    shift = util.by_pixel(12, 4.75),
                    scale = 0.5
                }
            }
        }
    }
    data.raw["assembling-machine"]["assembling-machine-5"].animation.layers[2].tint = { r = 0.7, g = 0.1, b = 0.7 }
    data.raw["assembling-machine"]["chemical-plant"].animation = bob_chemical_plant_animation({ r = 0.7, g = 0.2, b = 0.1 })
    data.raw["assembling-machine"]["chemical-plant-2"].animation = bob_chemical_plant_animation({ r = 0.1, g = 0.5, b = 0.7 })
    data.raw["assembling-machine"]["chemical-plant-3"].animation = bob_chemical_plant_animation({ r = 0.7, g = 0.1, b = 0.7 })
end

function createMachine(version)
    local cm = table.deepcopy(data.raw["assembling-machine"]["assembling-machine-" .. version])
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
    cm.icon_size = 32
    cm.minable = { hardness = 0.2, mining_time = 0.5, result = "logistic-assembling-machine-" .. version }
    cm.selection_box = { { -1.5, 0 }, { 1.5, 1.5 } }
    cm.fast_replaceable_group = "assembling-machine"
    cm.energy_source =
    {
        type = "electric",
        usage_priority = "secondary-input",
        emissions = 0.03 / 3.5
    }
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

function createPlant1(version)
    local cp = table.deepcopy(data.raw["assembling-machine"]["chemical-plant"])
    cp.name = "logistic-chemical-plant-" .. version
    cp.minable = { hardness = 0.2, mining_time = 0.5, result = "logistic-chemical-plant-" .. version }
    cp.icons = {
        { icon = data.raw["assembling-machine"]["chemical-plant"].icon, icon_size = 64 },
        { icon = data.raw.item["logistic-chest-requester"].icon, scale = mask_scale, shift = requester_mask_shift, icon_size = icon_size },
        { icon = data.raw.item["logistic-chest-passive-provider"].icon, scale = mask_scale, shift = provider_mask_shift, icon_size = icon_size },
    }
    cp.icon_size = 32
    cp.selection_box = { { -1.5, 0 }, { 1.5, 1.5 } }
    return cp
end

if mods["bobassembly"] then
    function createPlant(version)
        local cp = table.deepcopy(data.raw["assembling-machine"]["chemical-plant-" .. version])
        cp.name = "logistic-chemical-plant-" .. version
        cp.minable = { hardness = 0.2, mining_time = 0.5, result = "logistic-chemical-plant-" .. version }
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
        cp.icon_size = 32
        cp.selection_box = { { -1.5, 0 }, { 1.5, 1.5 } }
        return cp
    end
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

function createInserter(number)
    local ci = table.deepcopy(data.raw["inserter"]["stack-inserter"])
    ci.name = "invisible-inserter-" .. number
    ci.minable = { hardness = 0.2, mining_time = 0.5, result = "invisible-inserter-" .. number }
    ci.collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } }
    ci.selection_box = { { 0, 0 }, { 0, 0 } }
    if number == 1 then
        ci.pickup_position = { 0, -1 }
        ci.insert_position = { 0, 1.2 }
    else
        ci.pickup_position = { 0, 1 }
        ci.insert_position = { 0, -1.2 }
    end
    ci.energy_per_movement = "20KW"
    ci.energy_per_rotation = "20KW"
    ci.energy_source.drain = "0.1kW"
    ci.extension_speed = 0.5
    ci.rotation_speed = 0.5
    ci.hand_base_picture.scale = .001
    ci.hand_closed_picture.scale = .001
    ci.hand_open_picture.scale = .001
    ci.hand_base_shadow.scale = .001
    ci.hand_closed_shadow.scale = .001
    ci.hand_open_shadow.scale = .001
    ci.platform_picture.sheet.scale = .001
    ci.hand_base_picture.hr_version.scale = .001
    ci.hand_closed_picture.hr_version.scale = .001
    ci.hand_open_picture.hr_version.scale = .001
    ci.hand_base_shadow.hr_version.scale = .001
    ci.hand_closed_shadow.hr_version.scale = .001
    ci.hand_open_shadow.hr_version.scale = .001
    ci.platform_picture.sheet.hr_version.scale = .001
    return ci
end

local invisible_inserter_1 = createInserter(1)
local invisible_inserter_2 = createInserter(2)

local invisible_substation = table.deepcopy(data.raw["electric-pole"]["substation"])
invisible_substation.name = "invisible-substation"
invisible_substation.minable = { hardness = 0.2, mining_time = 0.5, result = nil }
invisible_substation.collision_box = { { -0, -0 }, { 0, 0 } }
invisible_substation.selection_box = { { 0, 0 }, { 0, 0 } }
invisible_substation.pictures.layers[1].scale = .001
invisible_substation.pictures.layers[1].hr_version.scale = .001
invisible_substation.pictures.layers[2].scale = .001
invisible_substation.pictures.layers[2].hr_version.scale = .001
invisible_substation.working_sound = nil
invisible_substation.radius_visualisation_picture.height = 1
invisible_substation.radius_visualisation_picture.width = 1

local assembling_provider = table.deepcopy(data.raw["logistic-container"]["logistic-chest-passive-provider"])
assembling_provider.name = "assembling-provider"
assembling_provider.minable = { mining_time = 0.001, result = nil }
assembling_provider.flags = nil

local assembling_requester = table.deepcopy(data.raw["logistic-container"]["logistic-chest-requester"])
assembling_requester.name = "assembling-requester"
assembling_requester.minable = { mining_time = 0.001, result = nil }
assembling_requester.flags = nil

data:extend({
    invisible_inserter_1,
    invisible_inserter_2,
    invisible_substation,
    assembling_provider,
    assembling_requester,
})
