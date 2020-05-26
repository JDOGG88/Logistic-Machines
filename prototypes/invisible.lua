function createInserter(number)
    local ci = table.deepcopy(data.raw.inserter["stack-inserter"])
    ci.name = "invisible-inserter-" .. number
    ci.minable = { hardness = 0.2, mining_time = 0.5, result = nil }
    ci.collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } }
    ci.selection_box = { { 0, 0 }, { 0, 0 } }
    ci.pickup_position = { 0, 0 }
    ci.insert_position = { 0, 0 }
    if settings.startup["show-inserter-arrows"].value == true then
        ci.flags = { "hidden" }
    else
        ci.flags = { "hide-alt-info", "hidden" }
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

local function createItem(name, icon_name)
    local item = {}
    item.type = "item"
    item.name = "invisible-" .. name
    item.icon = "__base__/graphics/icons/" .. icon_name .. ".png"
    item.icon_size = data.raw.item[icon_name].icon_size
    item.stack_size = 50
    item.place_result = item.name
    return item
end

local invisible_inserter_1_item = createItem("inserter-1", "stack-inserter")
local invisible_inserter_2_item = createItem("inserter-2", "stack-inserter")
local invisible_substation_item = createItem("substation", "substation")

data:extend({
    assembling_provider_item,
    assembling_requester_item,
    invisible_inserter_1_item,
    invisible_inserter_2_item,
    invisible_substation_item,
})
