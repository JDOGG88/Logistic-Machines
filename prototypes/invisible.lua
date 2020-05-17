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
        order = "a",
        place_result = "invisible-inserter-1",
        stack_size = 50
    },
    {
        type = "item",
        name = "invisible-inserter-2",
        icon = "__base__/graphics/icons/stack-inserter.png",
        icon_size = 32,
        subgroup = "inserter",
        order = "a",
        place_result = "invisible-inserter-2",
        stack_size = 50
    },
    {
        type = "item",
        name = "invisible-substation",
        icon = "__base__/graphics/icons/substation.png",
        icon_size = 32,
        subgroup = "energy-pipe-distribution",
        order = "a",
        place_result = "invisible-substation",
        stack_size = 50
    },
})
