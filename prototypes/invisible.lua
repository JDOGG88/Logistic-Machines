local function createInserter(number, entity_size)
    local ci = table.deepcopy(data.raw.inserter["stack-inserter"])
    ci.name = "invisible-inserter-" .. number .. "-" .. entity_size
    ci.minable = { hardness = 0.2, mining_time = 0.5, result = nil }
    ci.collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } }
    ci.selection_box = { { 0, 0 }, { 0, 0 } }
    ci.allow_custom_vectors = true
    if entity_size == "2x2" then
        if number == 1 then
            ci.pickup_position = { 0, -1 }
            ci.insert_position = { 0, 0 }
        else
            ci.pickup_position = { 0, 0 }
            ci.insert_position = { 0, -1 }
        end
    elseif entity_size == "3x3" then
        if number == 1 then
            ci.pickup_position = { 0, -1 }
            ci.insert_position = { 0, 1.2 }
        else
            ci.pickup_position = { 0, 1 }
            ci.insert_position = { 0, -1.2 }
        end
    elseif entity_size == "5x5" then
        if number == 1 then
            ci.pickup_position = { 0, -2 }
            ci.insert_position = { 0, 1 }
        else
            ci.pickup_position = { 0, 1 }
            ci.insert_position = { 0, -2 }
        end
    elseif entity_size == "6x6" then
        if number == 1 then
            ci.pickup_position = { 0, -2.95 }
            ci.insert_position = { 0, 1 }
        else
            ci.pickup_position = { 0, 1 }
            ci.insert_position = { 0, -2.95 }
        end
    elseif entity_size == "7x7" then
        if number == 1 then
            ci.pickup_position = { 0, -3 }
            ci.insert_position = { 0, 1 }
        else
            ci.pickup_position = { 0, 1 }
            ci.insert_position = { 0, -3 }
        end
    elseif entity_size == "8x8" then
        if number == 1 then
            ci.pickup_position = { 0, -3.9 }
            ci.insert_position = { 0, 1.2 }
        else
            ci.pickup_position = { 0, 1.2 }
            ci.insert_position = { 0, -3.9 }
        end
    end
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
    ci.draw_circuit_wires = false
    ci.circuit_connector_sprites = nil
    if number == 1 then
        ci.localised_name = { "entity-name.requester-inserter" }
    else
        ci.localised_name = { "entity-name.provider-inserter" }
    end
    return ci
end

local invisible_inserter_1_2x2 = createInserter(1, "2x2")
local invisible_inserter_2_2x2 = createInserter(2, "2x2")
local invisible_inserter_1_3x3 = createInserter(1, "3x3")
local invisible_inserter_2_3x3 = createInserter(2, "3x3")
local invisible_inserter_1_5x5 = createInserter(1, "5x5")
local invisible_inserter_2_5x5 = createInserter(2, "5x5")
local invisible_inserter_1_6x6 = createInserter(1, "6x6")
local invisible_inserter_2_6x6 = createInserter(2, "6x6")
local invisible_inserter_1_7x7 = createInserter(1, "7x7")
local invisible_inserter_2_7x7 = createInserter(2, "7x7")
local invisible_inserter_1_8x8 = createInserter(1, "8x8")
local invisible_inserter_2_8x8 = createInserter(2, "8x8")

local invisible_substation = table.deepcopy(data.raw["electric-pole"]["substation"])
invisible_substation.name = "invisible-substation"
invisible_substation.flags = { "hidden", "placeable-off-grid" }
invisible_substation.minable = { hardness = 0.2, mining_time = 0.5, result = nil }
invisible_substation.collision_box = { { -0, -0 }, { 0, 0 } }
invisible_substation.selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } }
invisible_substation.pictures.layers[1].scale = .001
invisible_substation.pictures.layers[1].hr_version.scale = .001
invisible_substation.pictures.layers[2].scale = .001
invisible_substation.pictures.layers[2].hr_version.scale = .001
invisible_substation.working_sound = nil
invisible_substation.radius_visualisation_picture.height = 1
invisible_substation.radius_visualisation_picture.width = 1
invisible_substation.selection_priority = 60
for i = 1, 4 do
    invisible_substation.connection_points[i].wire.copper = { 0, 0 }
    invisible_substation.connection_points[i].wire.red = { 0.5, 0 }
    invisible_substation.connection_points[i].wire.green = { -0.5, 0 }
    invisible_substation.connection_points[i].shadow.copper = { 0, 0 }
    invisible_substation.connection_points[i].shadow.red = { 0.5, 0 }
    invisible_substation.connection_points[i].shadow.green = { -0.5, 0 }
end

local assembling_provider = table.deepcopy(data.raw["logistic-container"]["logistic-chest-passive-provider"])
assembling_provider.name = "assembling-provider"
assembling_provider.minable = { mining_time = 0.001, result = nil }
assembling_provider.flags = { "hidden", "placeable-off-grid" }
assembling_provider.selection_box = { { 0, 0 }, { 0, 0 } }
assembling_provider.collision_box = { { -0, -0 }, { 0, 0 } }
assembling_provider.circuit_connector_sprites = nil
assembling_provider.localised_name = { "entity-name.assembling-provider", { "mod-name.mod-name" } }
assembling_provider.next_upgrade = nil
assembling_provider.draw_circuit_wires = false
assembling_provider.animation.layers[1].scale = .001
assembling_provider.animation.layers[1].hr_version.scale = .001
assembling_provider.animation.layers[2].scale = .001
assembling_provider.animation.layers[2].hr_version.scale = .001

local assembling_requester = table.deepcopy(data.raw["logistic-container"]["logistic-chest-requester"])
assembling_requester.name = "assembling-requester"
assembling_requester.minable = { mining_time = 0.001, result = nil }
assembling_requester.flags = { "hidden", "placeable-off-grid" }
assembling_requester.selection_box = { { 0, 0 }, { 0, 0 } }
assembling_requester.collision_box = { { -0, -0 }, { 0, 0 } }
assembling_requester.circuit_connector_sprites = nil
assembling_requester.localised_name = { "entity-name.assembling-requester", { "mod-name.mod-name" } }
assembling_requester.next_upgrade = nil
assembling_requester.draw_circuit_wires = false
assembling_requester.animation.layers[1].scale = .001
assembling_requester.animation.layers[1].hr_version.scale = .001
assembling_requester.animation.layers[2].scale = .001
assembling_requester.animation.layers[2].hr_version.scale = .001

local remnant_chest = table.deepcopy(data.raw.container["steel-chest"])
remnant_chest.name = "remnant-chest"
remnant_chest.inventory_size = 110
remnant_chest.minable = { mining_time = 1, result = nil }
remnant_chest.flags = { "hidden", "placeable-off-grid" }
remnant_chest.localised_name = { "entity-name." .. remnant_chest.name, { "mod-name.mod-name" } }
remnant_chest.next_upgrade = nil

data:extend({
    invisible_inserter_1_2x2,
    invisible_inserter_2_2x2,
    invisible_inserter_1_3x3,
    invisible_inserter_2_3x3,
    invisible_inserter_1_5x5,
    invisible_inserter_2_5x5,
    invisible_inserter_1_6x6,
    invisible_inserter_2_6x6,
    invisible_inserter_1_7x7,
    invisible_inserter_2_7x7,
    invisible_inserter_1_8x8,
    invisible_inserter_2_8x8,
    invisible_substation,
    assembling_provider,
    assembling_requester,
    remnant_chest,
})

local assembling_provider_item = table.deepcopy(data.raw.item["logistic-chest-passive-provider"])
assembling_provider_item.name = "assembling-provider"
assembling_provider_item.place_result = "assembling-provider"

local assembling_requester_item = table.deepcopy(data.raw.item["logistic-chest-requester"])
assembling_requester_item.name = "assembling-requester"
assembling_requester_item.place_result = "assembling-requester"

local remnant_chest_item = table.deepcopy(data.raw.item["steel-chest"])
remnant_chest_item.name = "remnant-chest"
remnant_chest_item.place_result = "remnant-chest"

local function createItem(name, entity_size)
    local item = {}
    item.type = "item"
    if name == "substation" then
        item.name = "invisible-" .. name
        item.icon = "__base__/graphics/icons/substation.png"
        item.icon_size = data.raw.item.substation.icon_size
    else
        item.name = "invisible-" .. name .. "-" .. entity_size
        item.icon = "__base__/graphics/icons/stack-inserter.png"
        item.icon_size = data.raw.item["stack-inserter"].icon_size
    end
    item.stack_size = 50
    item.place_result = item.name
    return item
end

local invisible_substation_item = createItem("substation")
local invisible_inserter_1_item_2x2 = createItem("inserter-1", "2x2")
local invisible_inserter_2_item_2x2 = createItem("inserter-2", "2x2")
local invisible_inserter_1_item_3x3 = createItem("inserter-1", "3x3")
local invisible_inserter_2_item_3x3 = createItem("inserter-2", "3x3")
local invisible_inserter_1_item_5x5 = createItem("inserter-1", "5x5")
local invisible_inserter_2_item_5x5 = createItem("inserter-2", "5x5")
local invisible_inserter_1_item_6x6 = createItem("inserter-1", "6x6")
local invisible_inserter_2_item_6x6 = createItem("inserter-2", "6x6")
local invisible_inserter_1_item_7x7 = createItem("inserter-1", "7x7")
local invisible_inserter_2_item_7x7 = createItem("inserter-2", "7x7")
local invisible_inserter_1_item_8x8 = createItem("inserter-1", "8x8")
local invisible_inserter_2_item_8x8 = createItem("inserter-2", "8x8")

data:extend({
    assembling_provider_item,
    assembling_requester_item,
    invisible_substation_item,
    invisible_inserter_1_item_2x2,
    invisible_inserter_2_item_2x2,
    invisible_inserter_1_item_3x3,
    invisible_inserter_2_item_3x3,
    invisible_inserter_1_item_5x5,
    invisible_inserter_2_item_5x5,
    invisible_inserter_1_item_6x6,
    invisible_inserter_2_item_6x6,
    invisible_inserter_1_item_7x7,
    invisible_inserter_2_item_7x7,
    invisible_inserter_1_item_8x8,
    invisible_inserter_2_item_8x8,
    remnant_chest_item,
})
