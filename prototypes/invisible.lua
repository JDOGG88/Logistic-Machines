local function createInserter(number, size)
    local ci = table.deepcopy(data.raw.inserter["stack-inserter"])
    ci.name = "invisible-inserter-" .. number .. "-" .. size .. "x" .. size
    ci.minable = { hardness = 0.2, mining_time = 0.5, result = nil }
    ci.collision_box = { { -0.15, -0.15 }, { 0.15, 0.15 } }
    ci.selection_box = { { 0, 0 }, { 0, 0 } }
    ci.allow_custom_vectors = true
    if size == 2 then
        if number == 1 then
            ci.pickup_position = { 0, -1 }
            ci.insert_position = { 0, 0 }
        else
            ci.pickup_position = { 0, 0 }
            ci.insert_position = { 0, -1 }
        end
    elseif size == 3 then
        if number == 1 then
            ci.pickup_position = { 0, -1 }
            ci.insert_position = { 0, 1.2 }
        else
            ci.pickup_position = { 0, 1 }
            ci.insert_position = { 0, -1.2 }
        end
    elseif size == 5 then
        if number == 1 then
            ci.pickup_position = { 0, -2 }
            ci.insert_position = { 0, 1 }
        else
            ci.pickup_position = { 0, 1 }
            ci.insert_position = { 0, -2 }
        end
    elseif size == 6 then
        if number == 1 then
            ci.pickup_position = { 0, -2.95 }
            ci.insert_position = { 0, 1 }
        else
            ci.pickup_position = { 0, 1 }
            ci.insert_position = { 0, -2.95 }
        end
    elseif size == 7 then
        if number == 1 then
            ci.pickup_position = { 0, -3 }
            ci.insert_position = { 0, 1 }
        else
            ci.pickup_position = { 0, 1 }
            ci.insert_position = { 0, -3 }
        end
    elseif size == 8 then
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

local function createSubstation(size)
    local cs = table.deepcopy(data.raw["electric-pole"]["substation"])
    cs.name = "invisible-substation-" .. size .. "x" .. size
    cs.flags = { "hidden", "placeable-off-grid" }
    cs.minable = { hardness = 0.2, mining_time = 0.5, result = nil }
    cs.collision_box = { { -0, -0 }, { 0, 0 } }
    cs.selection_box = { { -0.5, -0.5 }, { 0.5, 0.5 } }
    cs.pictures.layers[1].scale = .001
    cs.pictures.layers[1].hr_version.scale = .001
    cs.pictures.layers[2].scale = .001
    cs.pictures.layers[2].hr_version.scale = .001
    cs.working_sound = nil
    cs.radius_visualisation_picture.height = 1
    cs.radius_visualisation_picture.width = 1
    cs.selection_priority = 60
    cs.localised_name = { "entity-name.invisible-substation" }
    if settings.startup["limit-power"].value == true then
        cs.maximum_wire_distance = size
        cs.supply_area_distance = (size / 2)
    end
    for i = 1, 4 do
        cs.connection_points[i].wire.copper = { 0, 0 }
        cs.connection_points[i].wire.red = { 0.5, 0 }
        cs.connection_points[i].wire.green = { -0.5, 0 }
        cs.connection_points[i].shadow.copper = { 0, 0 }
        cs.connection_points[i].shadow.red = { 0.5, 0 }
        cs.connection_points[i].shadow.green = { -0.5, 0 }
    end
    return cs
end

local function createChest(type)
    local cc
    cc = table.deepcopy(data.raw["logistic-container"]["logistic-chest-" .. type])
    if type == "passive-provider" then
        cc.name = "assembling-provider"
        cc.localised_name = { "entity-name.assembling-provider", { "mod-name.mod-name" } }
    else
        cc.name = "assembling-requester"
        cc.localised_name = { "entity-name.assembling-requester", { "mod-name.mod-name" } }
    end
    cc.minable = { mining_time = 0.001, result = nil }
    cc.flags = { "hidden", "placeable-off-grid" }
    cc.selection_box = { { 0, 0 }, { 0, 0 } }
    cc.collision_box = { { -0, -0 }, { 0, 0 } }
    cc.circuit_connector_sprites = nil
    cc.next_upgrade = nil
    cc.draw_circuit_wires = false
    cc.animation.layers[1].scale = .001
    cc.animation.layers[1].hr_version.scale = .001
    cc.animation.layers[2].scale = .001
    cc.animation.layers[2].hr_version.scale = .001
    return cc
end

data:extend({
    createChest("passive-provider"),
    createChest("requester"),
    createSubstation(2),
    createSubstation(3),
    createSubstation(5),
    createSubstation(6),
    createSubstation(7),
    createSubstation(8),
    createInserter(1, 2),
    createInserter(2, 2),
    createInserter(1, 3),
    createInserter(2, 3),
    createInserter(1, 5),
    createInserter(2, 5),
    createInserter(1, 6),
    createInserter(2, 6),
    createInserter(1, 7),
    createInserter(2, 7),
    createInserter(1, 8),
    createInserter(2, 8),
})

local assembling_provider_item = table.deepcopy(data.raw.item["logistic-chest-passive-provider"])
assembling_provider_item.name = "assembling-provider"
assembling_provider_item.place_result = "assembling-provider"

local assembling_requester_item = table.deepcopy(data.raw.item["logistic-chest-requester"])
assembling_requester_item.name = "assembling-requester"
assembling_requester_item.place_result = "assembling-requester"

local function createItem(name, size)
    local item = {}
    item.type = "item"
    item.name = "invisible-" .. name .. "-" .. size .. "x" .. size
    if name == "substation" then
        item.icon = "__base__/graphics/icons/substation.png"
        item.icon_size = data.raw.item.substation.icon_size
    else
        item.icon = "__base__/graphics/icons/stack-inserter.png"
        item.icon_size = data.raw.item["stack-inserter"].icon_size
    end
    item.stack_size = 50
    item.place_result = item.name
    item.flags = { "hidden", "hide-from-bonus-gui" }
    return item
end

data:extend({
    assembling_provider_item,
    assembling_requester_item,
    createItem("substation", 2),
    createItem("substation", 3),
    createItem("substation", 5),
    createItem("substation", 6),
    createItem("substation", 7),
    createItem("substation", 8),
    createItem("inserter-1", 2),
    createItem("inserter-2", 2),
    createItem("inserter-1", 3),
    createItem("inserter-2", 3),
    createItem("inserter-1", 5),
    createItem("inserter-2", 5),
    createItem("inserter-1", 6),
    createItem("inserter-2", 6),
    createItem("inserter-1", 7),
    createItem("inserter-2", 7),
    createItem("inserter-1", 8),
    createItem("inserter-2", 8),
})
