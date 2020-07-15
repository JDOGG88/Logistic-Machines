local function assembly_set_2x2(entity)
    local provider = entity.surface.create_entity { name = "assembling-provider", position = { (entity.position.x) + 0.5, (entity.position.y) - 0.5 }, force = entity.force }
    provider.destructible = false
    
    local requester = entity.surface.create_entity { name = "assembling-requester", position = { (entity.position.x) - 0.5, (entity.position.y) - 0.5 }, force = entity.force }
    requester.destructible = false
    
    local inserter_1 = entity.surface.create_entity { name = "invisible-inserter-1-2x2", position = { (entity.position.x) - 0.5, (entity.position.y) }, force = entity.force }
    inserter_1.destructible = false
    inserter_1.minable = false
    
    local inserter_2 = entity.surface.create_entity { name = "invisible-inserter-2-2x2", position = { (entity.position.x) + 0.5, (entity.position.y) }, force = entity.force }
    inserter_2.destructible = false
    inserter_2.minable = false
    
    local substation = entity.surface.create_entity { name = "invisible-substation", position = { (entity.position.x), (entity.position.y) }, force = entity.force }
    substation.destructible = false
    substation.minable = false
    
    inserter_1.connect_neighbour({ wire = defines.wire_type.green, target_entity = inserter_2 })
    inserter_2.connect_neighbour({ wire = defines.wire_type.red, target_entity = provider })
    inserter_1.get_or_create_control_behavior().circuit_mode_of_operation = defines.control_behavior.inserter.circuit_mode_of_operation.none
    inserter_2.get_or_create_control_behavior().circuit_mode_of_operation = defines.control_behavior.inserter.circuit_mode_of_operation.none
    return
end

local function assembly_set_3x3(entity)
    local provider = entity.surface.create_entity { name = "assembling-provider", position = { (entity.position.x) + 1, (entity.position.y) - 1 }, force = entity.force }
    provider.destructible = false
    
    local requester = entity.surface.create_entity { name = "assembling-requester", position = { (entity.position.x) - 1, (entity.position.y) - 1 }, force = entity.force }
    requester.destructible = false
    
    local inserter_1 = entity.surface.create_entity { name = "invisible-inserter-1-3x3", position = { (entity.position.x) - 1, (entity.position.y) }, force = entity.force }
    inserter_1.destructible = false
    inserter_1.minable = false
    
    local inserter_2 = entity.surface.create_entity { name = "invisible-inserter-2-3x3", position = { (entity.position.x) + 1, (entity.position.y) }, force = entity.force }
    inserter_2.destructible = false
    inserter_2.minable = false
    
    local substation = entity.surface.create_entity { name = "invisible-substation", position = { (entity.position.x), (entity.position.y) }, force = entity.force }
    substation.destructible = false
    substation.minable = false
    
    inserter_1.connect_neighbour({ wire = defines.wire_type.green, target_entity = inserter_2 })
    inserter_2.connect_neighbour({ wire = defines.wire_type.red, target_entity = provider })
    inserter_1.get_or_create_control_behavior().circuit_mode_of_operation = defines.control_behavior.inserter.circuit_mode_of_operation.none
    inserter_2.get_or_create_control_behavior().circuit_mode_of_operation = defines.control_behavior.inserter.circuit_mode_of_operation.none
    return
end

local function assembly_set_5x5(entity)
    local provider = entity.surface.create_entity { name = "assembling-provider", position = { (entity.position.x) + 2, (entity.position.y) - 2 }, force = entity.force }
    provider.destructible = false
    
    local requester = entity.surface.create_entity { name = "assembling-requester", position = { (entity.position.x) - 2, (entity.position.y) - 2 }, force = entity.force }
    requester.destructible = false
    
    local inserter_1 = entity.surface.create_entity { name = "invisible-inserter-1-5x5", position = { (entity.position.x) - 2, (entity.position.y) }, force = entity.force, }
    inserter_1.destructible = false
    inserter_1.minable = false
    
    local inserter_2 = entity.surface.create_entity { name = "invisible-inserter-2-5x5", position = { (entity.position.x) + 1.5, (entity.position.y) }, force = entity.force, }
    inserter_2.destructible = false
    inserter_2.minable = false
    
    local substation = entity.surface.create_entity { name = "invisible-substation", position = { (entity.position.x), (entity.position.y) }, force = entity.force }
    substation.destructible = false
    substation.minable = false
    
    inserter_1.connect_neighbour({ wire = defines.wire_type.green, target_entity = inserter_2 })
    inserter_2.connect_neighbour({ wire = defines.wire_type.red, target_entity = provider })
    inserter_1.get_or_create_control_behavior().circuit_mode_of_operation = defines.control_behavior.inserter.circuit_mode_of_operation.none
    inserter_2.get_or_create_control_behavior().circuit_mode_of_operation = defines.control_behavior.inserter.circuit_mode_of_operation.none
    return
end

local function assembly_set_6x6(entity)
    local provider = entity.surface.create_entity { name = "assembling-provider", position = { (entity.position.x) + 2.5, (entity.position.y) - 2.5 }, force = entity.force }
    provider.destructible = false
    
    local requester = entity.surface.create_entity { name = "assembling-requester", position = { (entity.position.x) - 2.5, (entity.position.y) - 2.5 }, force = entity.force }
    requester.destructible = false
    
    local inserter_1 = entity.surface.create_entity { name = "invisible-inserter-1-6x6", position = { (entity.position.x) - 2.25, (entity.position.y) }, force = entity.force }
    inserter_1.destructible = false
    inserter_1.minable = false
    
    local inserter_2 = entity.surface.create_entity { name = "invisible-inserter-2-6x6", position = { (entity.position.x) + 2.25, (entity.position.y) }, force = entity.force }
    inserter_2.destructible = false
    inserter_2.minable = false
    
    local substation = entity.surface.create_entity { name = "invisible-substation", position = { (entity.position.x), (entity.position.y) }, force = entity.force }
    substation.destructible = false
    substation.minable = false
    
    inserter_1.connect_neighbour({ wire = defines.wire_type.green, target_entity = inserter_2 })
    inserter_2.connect_neighbour({ wire = defines.wire_type.red, target_entity = provider })
    inserter_1.get_or_create_control_behavior().circuit_mode_of_operation = defines.control_behavior.inserter.circuit_mode_of_operation.none
    inserter_2.get_or_create_control_behavior().circuit_mode_of_operation = defines.control_behavior.inserter.circuit_mode_of_operation.none
    return
end

local function assembly_set_7x7(entity)
    local provider = entity.surface.create_entity { name = "assembling-provider", position = { (entity.position.x) + 3, (entity.position.y) - 3 }, force = entity.force }
    provider.destructible = false
    
    local requester = entity.surface.create_entity { name = "assembling-requester", position = { (entity.position.x) - 3, (entity.position.y) - 3 }, force = entity.force }
    requester.destructible = false
    
    local inserter_1 = entity.surface.create_entity { name = "invisible-inserter-1-7x7", position = { (entity.position.x) - 3.5, (entity.position.y) }, force = entity.force }
    inserter_1.destructible = false
    inserter_1.minable = false
    
    local inserter_2 = entity.surface.create_entity { name = "invisible-inserter-2-7x7", position = { (entity.position.x) + 2.8, (entity.position.y) }, force = entity.force }
    inserter_2.destructible = false
    inserter_2.minable = false
    
    local substation = entity.surface.create_entity { name = "invisible-substation", position = { (entity.position.x), (entity.position.y) }, force = entity.force }
    substation.destructible = false
    substation.minable = false
    
    inserter_1.connect_neighbour({ wire = defines.wire_type.green, target_entity = inserter_2 })
    inserter_2.connect_neighbour({ wire = defines.wire_type.red, target_entity = provider })
    inserter_1.get_or_create_control_behavior().circuit_mode_of_operation = defines.control_behavior.inserter.circuit_mode_of_operation.none
    inserter_2.get_or_create_control_behavior().circuit_mode_of_operation = defines.control_behavior.inserter.circuit_mode_of_operation.none
    return
end

local function lab_set(entity)
    local requester = entity.surface.create_entity { name = "assembling-requester", position = { (entity.position.x) - 1, (entity.position.y) - 1 }, force = entity.force }
    requester.destructible = false
    
    local inserter_1 = entity.surface.create_entity { name = "invisible-inserter-1-3x3", position = { (entity.position.x) - 1, (entity.position.y) }, force = entity.force }
    inserter_1.destructible = false
    inserter_1.minable = false
    
    local substation = entity.surface.create_entity { name = "invisible-substation", position = { (entity.position.x), (entity.position.y) }, force = entity.force }
    substation.destructible = false
    substation.minable = false
    
    return
end

local function lab_set_8x8(entity)
    local requester = entity.surface.create_entity { name = "assembling-requester", position = { (entity.position.x) - 3.4, (entity.position.y) - 3.4 }, force = entity.force }
    requester.destructible = false
    
    local inserter_1 = entity.surface.create_entity { name = "invisible-inserter-1-8x8", position = { (entity.position.x) - 3.9, (entity.position.y) }, force = entity.force }
    inserter_1.destructible = false
    inserter_1.minable = false
    
    local substation = entity.surface.create_entity { name = "invisible-substation", position = { (entity.position.x), (entity.position.y) }, force = entity.force }
    substation.destructible = false
    substation.minable = false
    
    return
end

local function remnant_chest(entity)
    local requester = entity.surface.create_entity { name = "remnant-chest", position = { entity.position.x, entity.position.y }, force = entity.force }
    requester.minable = true
    return
end

local machine_2x2 = {
    "logistic-electronics-machine-2",
    "logistic-electronics-machine-3",
}

local machine_3x3 = {
    "logistic-assembling-machine-3",
    "logistic-assembling-machine-4",
    "logistic-assembling-machine-5",
    "logistic-assembling-machine-6",
    "logistic-chemical-plant-1",
    "logistic-chemical-plant-2",
    "logistic-chemical-plant-3",
    "logistic-chemical-plant-4",
    "logistic-electrolyser-2",
    "logistic-electrolyser-3",
    "logistic-electrolyser-4",
    "logistic-electrolyser-5",
    "logistic-electric-furnace-1",
    "logistic-electric-furnace-2",
    "logistic-electric-furnace-3",
    "logistic-electric-mixing-furnace-1",
    "logistic-electric-chemical-furnace-1",
    "logistic-electric-chemical-mixing-furnace-1",
    "logistic-electric-chemical-mixing-furnace-2",
    "logistic-research-server-1",
    "logistic-fuel-refinery-1",
}

local machine_5x5 = {
    "logistic-advanced-assembling-machine-1",
    "logistic-nuclear-reactor-1",
    "logistic-nuclear-reactor-2",
    "logistic-nuclear-reactor-3",
}

local machine_6x6 = {
    "logistic-quantum-computer-1",
}

local machine_7x7 = {
    "logistic-advanced-furnace-1",
    "logistic-advanced-chemical-plant-1",
}

local lab = {
    "logistic-lab-1",
    "logistic-lab-2",
    "logistic-advanced-lab-1",
}

local lab_8x8 = {
    "logistic-singularity-lab-1",
}

script.on_event(defines.events.on_built_entity, function(event)
    for _, name in pairs(machine_2x2) do
        if (event.created_entity.name == name) then
            assembly_set_2x2(event.created_entity)
        end
    end
    for _, name in pairs(machine_3x3) do
        if (event.created_entity.name == name) then
            assembly_set_3x3(event.created_entity)
        end
    end
    for _, name in pairs(machine_5x5) do
        if (event.created_entity.name == name) then
            assembly_set_5x5(event.created_entity)
        end
    end
    for _, name in pairs(machine_6x6) do
        if (event.created_entity.name == name) then
            assembly_set_6x6(event.created_entity)
        end
    end
    for _, name in pairs(machine_7x7) do
        if (event.created_entity.name == name) then
            assembly_set_7x7(event.created_entity)
        end
    end
    for _, name in pairs(lab_8x8) do
        if (event.created_entity.name == name) then
            lab_set_8x8(event.created_entity)
        end
    end
    for _, name in pairs(lab) do
        if (event.created_entity.name == name) then
            lab_set(event.created_entity)
        end
    end
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
    for _, name in pairs(machine_2x2) do
        if (event.created_entity.name == name) then
            assembly_set_2x2(event.created_entity)
        end
    end
    for _, name in pairs(machine_3x3) do
        if (event.created_entity.name == name) then
            assembly_set_3x3(event.created_entity)
        end
    end
    for _, name in pairs(machine_5x5) do
        if (event.created_entity.name == name) then
            assembly_set_5x5(event.created_entity)
        end
    end
    for _, name in pairs(machine_6x6) do
        if (event.created_entity.name == name) then
            assembly_set_6x6(event.created_entity)
        end
    end
    for _, name in pairs(machine_7x7) do
        if (event.created_entity.name == name) then
            assembly_set_7x7(event.created_entity)
        end
    end
    for _, name in pairs(lab_8x8) do
        if (event.created_entity.name == name) then
            lab_set_8x8(event.created_entity)
        end
    end
    for _, name in pairs(lab) do
        if (event.created_entity.name == name) then
            lab_set(event.created_entity)
        end
    end
end)

script.on_event(defines.events.script_raised_revive, function(event)
    for _, name in pairs(machine_2x2) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            assembly_set_2x2(entity)
        end
    end
    for _, name in pairs(machine_3x3) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            assembly_set_3x3(entity)
        end
    end
    for _, name in pairs(machine_5x5) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            assembly_set_5x5(entity)
        end
    end
    for _, name in pairs(machine_6x6) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            assembly_set_6x6(entity)
        end
    end
    for _, name in pairs(machine_7x7) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            assembly_set_7x7(entity)
        end
    end
    for _, name in pairs(lab_8x8) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            lab_set_8x8(entity)
        end
    end
    for _, name in pairs(lab) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            lab_set(entity)
        end
    end
end)

script.on_event(defines.events.script_raised_built, function(event)
    for _, name in pairs(machine_2x2) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            assembly_set_2x2(entity)
        end
    end
    for _, name in pairs(machine_3x3) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            assembly_set_3x3(entity)
        end
    end
    for _, name in pairs(machine_5x5) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            assembly_set_5x5(entity)
        end
    end
    for _, name in pairs(machine_6x6) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            assembly_set_6x6(entity)
        end
    end
    for _, name in pairs(machine_7x7) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            assembly_set_7x7(entity)
        end
    end
    for _, name in pairs(lab_8x8) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            lab_set_8x8(entity)
        end
    end
    for _, name in pairs(lab) do
        local entity = event.entity or event.created_entity
        if (entity.name == name) then
            lab_set(entity)
        end
    end
end)

local invisible_entity = {
    "invisible-inserter-1-2x2",
    "invisible-inserter-2-2x2",
    "invisible-inserter-1-3x3",
    "invisible-inserter-2-3x3",
    "invisible-inserter-1-5x5",
    "invisible-inserter-2-5x5",
    "invisible-inserter-1-6x6",
    "invisible-inserter-2-6x6",
    "invisible-inserter-1-7x7",
    "invisible-inserter-2-7x7",
    "invisible-inserter-1-8x8",
    "invisible-inserter-2-8x8",
    "invisible-substation",
    "assembling-provider",
    "assembling-requester",
}

local area_var_2x2 = 0.7
local area_var_3x3 = 1.2
local area_var_5x5 = 2.2
local area_var_6x6 = 2.65
local area_var_7x7 = 3.2
local area_var_8x8 = 3.4

local function get_selected_area(entity, var)
    local center = entity.position
    return { { center.x - var, center.y - var }, { center.x + var, center.y + var } }
end

script.on_event("lm-open-requester", function(event)
    local player = game.get_player(event.player_index)
    local entity = player.selected
    for _, name in pairs(machine_2x2) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_2x2), name = "assembling-requester" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(machine_3x3) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_3x3), name = "assembling-requester" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(machine_5x5) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_5x5), name = "assembling-requester" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(machine_6x6) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_6x6), name = "assembling-requester" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(machine_7x7) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_7x7), name = "assembling-requester" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(lab) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_3x3), name = "assembling-requester" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(lab_8x8) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_8x8), name = "assembling-requester" }) do
                player.opened = entity_interaction
            end
        end
    end
end)

script.on_event("lm-open-requester-inserter", function(event)
    local player = game.get_player(event.player_index)
    local entity = player.selected
    for _, name in pairs(machine_2x2) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_2x2), name = "invisible-inserter-1-2x2" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(machine_3x3) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_3x3), name = "invisible-inserter-1-3x3" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(machine_5x5) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_5x5), name = "invisible-inserter-1-5x5" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(machine_6x6) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_6x6), name = "invisible-inserter-1-6x6" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(machine_7x7) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_7x7), name = "invisible-inserter-1-7x7" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(lab) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_3x3), name = "invisible-inserter-1-3x3" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(lab_8x8) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_8x8), name = "invisible-inserter-1-8x8" }) do
                player.opened = entity_interaction
            end
        end
    end
end)

script.on_event("lm-open-provider", function(event)
    local player = game.get_player(event.player_index)
    local entity = player.selected
    for _, name in pairs(machine_2x2) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_2x2), name = "assembling-provider" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(machine_3x3) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_3x3), name = "assembling-provider" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(machine_5x5) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_5x5), name = "assembling-provider" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(machine_6x6) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_6x6), name = "assembling-provider" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(machine_7x7) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_7x7), name = "assembling-provider" }) do
                player.opened = entity_interaction
            end
        end
    end
end)

script.on_event("lm-open-provider-inserter", function(event)
    local player = game.get_player(event.player_index)
    local entity = player.selected
    for _, name in pairs(machine_2x2) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_2x2), name = "invisible-inserter-2-2x2" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(machine_3x3) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_3x3), name = "invisible-inserter-2-3x3" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(machine_5x5) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_5x5), name = "invisible-inserter-2-5x5" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(machine_6x6) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_6x6), name = "invisible-inserter-2-6x6" }) do
                player.opened = entity_interaction
            end
        end
    end
    for _, name in pairs(machine_7x7) do
        if entity and entity.name == name then
            for _, entity_interaction in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_7x7), name = "invisible-inserter-2-7x7" }) do
                player.opened = entity_interaction
            end
        end
    end
end)

local function get_mined_area(event, var)
    local center = event.entity.position
    return { { center.x - var, center.y - var }, { center.x + var, center.y + var } }
end

script.on_event(defines.events.on_player_mined_entity, function(event)
    for _, name in pairs(machine_2x2) do
        if (event.entity.name == name) then
            remnant_chest(event.entity)
            for _, remnant_chest_entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_2x2), name = "remnant-chest" }) do
                for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_2x2), name = invisible_entity }) do
                    entity.mine({
                        inventory = remnant_chest_entity.get_inventory(defines.inventory.chest),
                        ignore_minable = true,
                    })
                end
            end
        end
    end
    for _, name in pairs(machine_3x3) do
        if (event.entity.name == name) then
            remnant_chest(event.entity)
            for _, remnant_chest_entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_3x3), name = "remnant-chest" }) do
                for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_3x3), name = invisible_entity }) do
                    entity.mine({
                        inventory = remnant_chest_entity.get_inventory(defines.inventory.chest),
                        ignore_minable = true,
                    })
                end
            end
        end
    end
    for _, name in pairs(machine_5x5) do
        if (event.entity.name == name) then
            remnant_chest(event.entity)
            for _, remnant_chest_entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_5x5), name = "remnant-chest" }) do
                for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_5x5), name = invisible_entity }) do
                    entity.mine({
                        inventory = remnant_chest_entity.get_inventory(defines.inventory.chest),
                        ignore_minable = true,
                    })
                end
            end
        end
    end
    for _, name in pairs(machine_6x6) do
        if (event.entity.name == name) then
            remnant_chest(event.entity)
            for _, remnant_chest_entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_6x6), name = "remnant-chest" }) do
                for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_6x6), name = invisible_entity }) do
                    entity.mine({
                        inventory = remnant_chest_entity.get_inventory(defines.inventory.chest),
                        ignore_minable = true,
                    })
                end
            end
        end
    end
    for _, name in pairs(machine_7x7) do
        if (event.entity.name == name) then
            remnant_chest(event.entity)
            for _, remnant_chest_entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_7x7), name = "remnant-chest" }) do
                for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_7x7), name = invisible_entity }) do
                    entity.mine({
                        inventory = remnant_chest_entity.get_inventory(defines.inventory.chest),
                        ignore_minable = true,
                    })
                end
            end
        end
    end
    for _, name in pairs(lab) do
        if (event.entity.name == name) then
            remnant_chest(event.entity)
            for _, remnant_chest_entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_3x3), name = "remnant-chest" }) do
                for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_3x3), name = invisible_entity }) do
                    entity.mine({
                        inventory = remnant_chest_entity.get_inventory(defines.inventory.chest),
                        ignore_minable = true,
                    })
                end
            end
        end
    end
    for _, name in pairs(lab_8x8) do
        if (event.entity.name == name) then
            remnant_chest(event.entity)
            for _, remnant_chest_entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_8x8), name = "remnant-chest" }) do
                for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_8x8), name = invisible_entity }) do
                    entity.mine({
                        inventory = remnant_chest_entity.get_inventory(defines.inventory.chest),
                        ignore_minable = true,
                    })
                end
            end
        end
    end
end)

script.on_event(defines.events.on_robot_mined_entity, function(event)
    for _, name in pairs(machine_2x2) do
        if (event.entity.name == name) then
            remnant_chest(event.entity)
            for _, remnant_chest_entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_2x2), name = "remnant-chest" }) do
                for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_2x2), name = invisible_entity }) do
                    entity.mine({
                        inventory = remnant_chest_entity.get_inventory(defines.inventory.chest),
                        ignore_minable = true,
                    })
                end
            end
        end
    end
    for _, name in pairs(machine_3x3) do
        if (event.entity.name == name) then
            remnant_chest(event.entity)
            for _, remnant_chest_entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_3x3), name = "remnant-chest" }) do
                for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_3x3), name = invisible_entity }) do
                    entity.mine({
                        inventory = remnant_chest_entity.get_inventory(defines.inventory.chest),
                        ignore_minable = true,
                    })
                end
            end
        end
    end
    for _, name in pairs(machine_5x5) do
        if (event.entity.name == name) then
            remnant_chest(event.entity)
            for _, remnant_chest_entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_5x5), name = "remnant-chest" }) do
                for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_5x5), name = invisible_entity }) do
                    entity.mine({
                        inventory = remnant_chest_entity.get_inventory(defines.inventory.chest),
                        ignore_minable = true,
                    })
                end
            end
        end
    end
    for _, name in pairs(machine_6x6) do
        if (event.entity.name == name) then
            remnant_chest(event.entity)
            for _, remnant_chest_entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_6x6), name = "remnant-chest" }) do
                for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_6x6), name = invisible_entity }) do
                    entity.mine({
                        inventory = remnant_chest_entity.get_inventory(defines.inventory.chest),
                        ignore_minable = true,
                    })
                end
            end
        end
    end
    for _, name in pairs(machine_7x7) do
        if (event.entity.name == name) then
            remnant_chest(event.entity)
            for _, remnant_chest_entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_7x7), name = "remnant-chest" }) do
                for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_7x7), name = invisible_entity }) do
                    entity.mine({
                        inventory = remnant_chest_entity.get_inventory(defines.inventory.chest),
                        ignore_minable = true,
                    })
                end
            end
        end
    end
    for _, name in pairs(lab) do
        if (event.entity.name == name) then
            remnant_chest(event.entity)
            for _, remnant_chest_entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_3x3), name = "remnant-chest" }) do
                for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_3x3), name = invisible_entity }) do
                    entity.mine({
                        inventory = remnant_chest_entity.get_inventory(defines.inventory.chest),
                        ignore_minable = true,
                    })
                end
            end
        end
    end
    for _, name in pairs(lab_8x8) do
        if (event.entity.name == name) then
            remnant_chest(event.entity)
            for _, remnant_chest_entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_8x8), name = "remnant-chest" }) do
                for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_8x8), name = invisible_entity }) do
                    entity.mine({
                        inventory = remnant_chest_entity.get_inventory(defines.inventory.chest),
                        ignore_minable = true,
                    })
                end
            end
        end
    end
end)

script.on_event(defines.events.on_entity_died, function(event)
    for _, name in pairs(machine_2x2) do
        if (event.entity.name == name) then
            for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_2x2), name = invisible_entity }) do
                entity.destroy()
            end
        end
    end
    for _, name in pairs(machine_3x3) do
        if (event.entity.name == name) then
            for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_3x3), name = invisible_entity }) do
                entity.destroy()
            end
        end
    end
    for _, name in pairs(machine_5x5) do
        if (event.entity.name == name) then
            for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_5x5), name = invisible_entity }) do
                entity.destroy()
            end
        end
    end
    for _, name in pairs(machine_6x6) do
        if (event.entity.name == name) then
            for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_6x6), name = invisible_entity }) do
                entity.destroy()
            end
        end
    end
    for _, name in pairs(machine_7x7) do
        if (event.entity.name == name) then
            for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_7x7), name = invisible_entity }) do
                entity.destroy()
            end
        end
    end
    for _, name in pairs(lab) do
        if (event.entity.name == name) then
            for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_3x3), name = invisible_entity }) do
                entity.destroy()
            end
        end
    end
    for _, name in pairs(lab_8x8) do
        if (event.entity.name == name) then
            for _, entity in pairs(event.entity.surface.find_entities_filtered { area = get_mined_area(event, area_var_8x8), name = invisible_entity }) do
                entity.destroy()
            end
        end
    end
end)
