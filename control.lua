local gui = require("prototypes.gui.gui")

local function gui_regen(player)
    gui.regen(player)
end

script.on_configuration_changed(function()
    for _, player in pairs(game.players) do
        gui_regen(player)
    end
    if game.active_mods["bobinserters"] then
        remote.call("bobinserters", "blacklist_inserters",
                {
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
                }
        )
    end
end)

script.on_event(defines.events.on_player_created, function(event)
    gui_regen(game.get_player(event.player_index))
    if game.active_mods["bobinserters"] then
        remote.call("bobinserters", "blacklist_inserters",
                {
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
                }
        )
    end
end)

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
    local entity = event.entity or event.created_entity
    for _, name in pairs(machine_2x2) do
        if (entity.name == name) then
            assembly_set_2x2(entity)
        end
    end
    for _, name in pairs(machine_3x3) do
        if (entity.name == name) then
            assembly_set_3x3(entity)
        end
    end
    for _, name in pairs(machine_5x5) do
        if (entity.name == name) then
            assembly_set_5x5(entity)
        end
    end
    for _, name in pairs(machine_6x6) do
        if (entity.name == name) then
            assembly_set_6x6(entity)
        end
    end
    for _, name in pairs(machine_7x7) do
        if (entity.name == name) then
            assembly_set_7x7(entity)
        end
    end
    for _, name in pairs(lab_8x8) do
        if (entity.name == name) then
            lab_set_8x8(entity)
        end
    end
    for _, name in pairs(lab) do
        if (entity.name == name) then
            lab_set(entity)
        end
    end
end)

script.on_event(defines.events.script_raised_built, function(event)
    local entity = event.entity or event.created_entity
    for _, name in pairs(machine_2x2) do
        if (entity.name == name) then
            assembly_set_2x2(entity)
        end
    end
    for _, name in pairs(machine_3x3) do
        if (entity.name == name) then
            assembly_set_3x3(entity)
        end
    end
    for _, name in pairs(machine_5x5) do
        if (entity.name == name) then
            assembly_set_5x5(entity)
        end
    end
    for _, name in pairs(machine_6x6) do
        if (entity.name == name) then
            assembly_set_6x6(entity)
        end
    end
    for _, name in pairs(machine_7x7) do
        if (entity.name == name) then
            assembly_set_7x7(entity)
        end
    end
    for _, name in pairs(lab_8x8) do
        if (entity.name == name) then
            lab_set_8x8(entity)
        end
    end
    for _, name in pairs(lab) do
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

local area_var_2x2 = 1
local area_var_3x3 = 1.5
local area_var_5x5 = 2.2
local area_var_6x6 = 2.65
local area_var_7x7 = 3.2
local area_var_8x8 = 3.4

local function get_selected_area(entity, var)
    local center = entity.position
    return { { center.x - var, center.y - var }, { center.x + var, center.y + var } }
end

local lm_current_entities = {}

local function gui_text(player, name)
    local screen_flow = player.gui.screen
    local entity_window = screen_flow.lm_entity_window
    local rc_button = entity_window.lm_body_flow.lm_left_body_flow.lm_requester_chest_button
    local rci_button = entity_window.lm_body_flow.lm_left_body_flow.lm_requester_chest_inserter_button
    local entity_button = entity_window.lm_body_flow.lm_center_body_flow.lm_entity_button
    local circuit_button = entity_window.lm_body_flow.lm_center_body_flow.lm_circuit_button
    local pc_button = entity_window.lm_body_flow.lm_right_body_flow.lm_provider_chest_button
    local pci_button = entity_window.lm_body_flow.lm_right_body_flow.lm_provider_chest_inserter_button
    local circuit_window = screen_flow.lm_circuit_network_config_window
    local localised_entity_name = { "lm-gui." .. string.sub(name, 1, #name - 2) }
    entity_window.lm_main_title_flow.lm_main_title.caption = localised_entity_name
    rc_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Requester Chest" }
    rci_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Requester Chest Inserter" }
    entity_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Main Crafting Window" }
    circuit_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Circuit Network Configuration" }
    pc_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Provider Chest" }
    pci_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Provider Chest Inserter" }
    circuit_window.lm_circuit_title_flow.lm_circuit_title.tooltip = { "lm-gui.lm-circuit-tooltip", localised_entity_name }
end

local function lab_gui_text(player, name)
    local screen_flow = player.gui.screen
    local entity_window = screen_flow.lm_entity_window
    local rc_button = entity_window.lm_body_flow.lm_left_body_flow.lm_requester_chest_button
    local rci_button = entity_window.lm_body_flow.lm_left_body_flow.lm_requester_chest_inserter_button
    local entity_button = entity_window.lm_body_flow.lm_center_body_flow.lm_entity_button
    local circuit_button = entity_window.lm_body_flow.lm_center_body_flow.lm_circuit_button
    local circuit_window = screen_flow.lm_circuit_network_config_window
    local localised_entity_name = { "lm-gui." .. string.sub(name, 1, #name - 2) }
    entity_window.lm_main_title_flow.lm_main_title.caption = localised_entity_name
    rc_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Requester Chest" }
    rci_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Requester Chest Inserter" }
    entity_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Main Crafting Window" }
    circuit_button.tooltip = { "lm-gui.lm-entity-tooltip", localised_entity_name, "Circuit Network Configuration" }
    circuit_window.lm_circuit_title_flow.lm_circuit_title.tooltip = { "lm-gui.lm-circuit-tooltip", localised_entity_name }
end

local function get_entity_by_name(name)
    for _, entity in pairs(lm_current_entities) do
        if entity.name == name then
            return entity
        end
    end
end

local function get_requester_inserter_name()
    for _, entity in pairs(lm_current_entities) do
        if entity.name == string.match(entity.name, "invisible%-inserter%-1.*") then
            return entity.name
        end
    end
end

local function get_provider_inserter_name()
    for _, entity in pairs(lm_current_entities) do
        if entity.name == string.match(entity.name, "invisible%-inserter%-2.*") then
            return entity.name
        end
    end
end

local function connection_checker(entity_from_name, entity_to_name, wire_color)
    local connection = false
    for _, entity in pairs(lm_current_entities) do
        if entity == get_entity_by_name(entity_from_name) then
            if entity.circuit_connected_entities[wire_color] ~= nil then
                for _, connected_entity in pairs(entity.circuit_connected_entities[wire_color]) do
                    if connected_entity == get_entity_by_name(entity_to_name) then
                        connection = true
                    end
                end
            elseif get_entity_by_name(entity_from_name).circuit_connected_entities[wire_color] == nil then
                connection = false
            end
        end
    end
    return connection
end

script.on_event(defines.events.on_gui_opened, function(event)
    local player = game.get_player(event.player_index)
    local entity = player.selected
    local screen_flow = player.gui.screen
    local entity_window = screen_flow.lm_entity_window
    local circuit_window = screen_flow.lm_circuit_network_config_window
    local circuit_body = circuit_window.circuit_body
    local circuit_body_image_container = circuit_body.circuit_body_image_container
    local circuit_body_image_container_flow = circuit_body_image_container.circuit_body_image_container_flow
    local chest_flow = circuit_body_image_container_flow.circuit_body_flow_1
    local top_flow = circuit_body_image_container_flow.circuit_body_flow_2
    local mid_flow = circuit_body_image_container_flow.circuit_body_flow_3
    local bottom_flow = circuit_body_image_container_flow.circuit_body_flow_4
    local inserter_flow = circuit_body_image_container_flow.circuit_body_flow_5
    for _, name in pairs(machine_2x2) do
        if entity and entity.name == name and event.gui_type == defines.gui_type.entity then
            for _, current_entity in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_2x2) }) do
                table.insert(lm_current_entities, current_entity)
                gui_text(player, name)
                player.opened = entity_window
                entity_window.visible = true
                entity_window.auto_center = true
                circuit_window.visible = false
            end
        end
    end
    for _, name in pairs(machine_3x3) do
        if entity and entity.name == name and event.gui_type == defines.gui_type.entity then
            for _, current_entity in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_3x3) }) do
                table.insert(lm_current_entities, current_entity)
                gui_text(player, name)
                player.opened = entity_window
                entity_window.visible = true
                entity_window.auto_center = true
                circuit_window.visible = false
            end
        end
    end
    for _, name in pairs(machine_5x5) do
        if entity and entity.name == name and event.gui_type == defines.gui_type.entity then
            for _, current_entity in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_5x5) }) do
                table.insert(lm_current_entities, current_entity)
                gui_text(player, name)
                player.opened = entity_window
                entity_window.visible = true
                entity_window.auto_center = true
                circuit_window.visible = false
            end
        end
    end
    for _, name in pairs(machine_6x6) do
        if entity and entity.name == name and event.gui_type == defines.gui_type.entity then
            for _, current_entity in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_6x6) }) do
                table.insert(lm_current_entities, current_entity)
                gui_text(player, name)
                player.opened = entity_window
                entity_window.visible = true
                entity_window.auto_center = true
                circuit_window.visible = false
            end
        end
    end
    for _, name in pairs(machine_7x7) do
        if entity and entity.name == name and event.gui_type == defines.gui_type.entity then
            for _, current_entity in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_7x7) }) do
                table.insert(lm_current_entities, current_entity)
                gui_text(player, name)
                player.opened = entity_window
                entity_window.visible = true
                entity_window.auto_center = true
                circuit_window.visible = false
            end
        end
    end
    for _, name in pairs(lab_8x8) do
        if entity and entity.name == name and event.gui_type == defines.gui_type.entity then
            for _, current_entity in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_8x8) }) do
                table.insert(lm_current_entities, current_entity)
                lab_gui_text(player, name)
                player.opened = entity_window
                entity_window.visible = true
                entity_window.auto_center = true
                circuit_window.visible = false
                entity_window.lm_body_flow.lm_right_body_flow.visible = false
                circuit_body_image_container.lm_wire_pc_to_sub_red.visible = false
                circuit_body_image_container.lm_wire_pc_to_sub_green.visible = false
                circuit_body_image_container.lm_wire_pci_to_sub_red.visible = false
                circuit_body_image_container.lm_wire_pci_to_sub_green.visible = false
                circuit_body_image_container.lm_wire_rc_to_pc_red.visible = false
                circuit_body_image_container.lm_wire_rc_to_pc_green.visible = false
                circuit_body_image_container.lm_wire_rci_to_pci_red.visible = false
                circuit_body_image_container.lm_wire_rci_to_pci_green.visible = false
                circuit_body_image_container.lm_wire_pc_to_pci_red.visible = false
                circuit_body_image_container.lm_wire_pc_to_pci_green.visible = false
                chest_flow.circuit_body_flow_1_button_right.visible = false
                chest_flow.checkbox_flow_1_flow.visible = false
                top_flow.checkbox_flow_2_right_1.visible = false
                top_flow.checkbox_flow_2_right_2.visible = false
                mid_flow.checkbox_flow_3_right_1.visible = false
                mid_flow.checkbox_flow_3_right_2.visible = false
                bottom_flow.checkbox_flow_4_right_1.visible = false
                bottom_flow.checkbox_flow_4_right_2.visible = false
                inserter_flow.circuit_body_flow_5_button_right.visible = false
                inserter_flow.checkbox_flow_5_flow.visible = false
            end
        end
    end
    for _, name in pairs(lab) do
        if entity and entity.name == name and event.gui_type == defines.gui_type.entity then
            for _, current_entity in pairs(entity.surface.find_entities_filtered { area = get_selected_area(entity, area_var_3x3) }) do
                table.insert(lm_current_entities, current_entity)
                lab_gui_text(player, name)
                player.opened = entity_window
                entity_window.visible = true
                entity_window.auto_center = true
                circuit_window.visible = false
                entity_window.lm_body_flow.lm_right_body_flow.visible = false
                circuit_body_image_container.lm_wire_pc_to_sub_red.visible = false
                circuit_body_image_container.lm_wire_pc_to_sub_green.visible = false
                circuit_body_image_container.lm_wire_pci_to_sub_red.visible = false
                circuit_body_image_container.lm_wire_pci_to_sub_green.visible = false
                circuit_body_image_container.lm_wire_rc_to_pc_red.visible = false
                circuit_body_image_container.lm_wire_rc_to_pc_green.visible = false
                circuit_body_image_container.lm_wire_rci_to_pci_red.visible = false
                circuit_body_image_container.lm_wire_rci_to_pci_green.visible = false
                circuit_body_image_container.lm_wire_pc_to_pci_red.visible = false
                circuit_body_image_container.lm_wire_pc_to_pci_green.visible = false
                chest_flow.circuit_body_flow_1_button_right.visible = false
                chest_flow.checkbox_flow_1_flow.visible = false
                top_flow.checkbox_flow_2_right_1.visible = false
                top_flow.checkbox_flow_2_right_2.visible = false
                mid_flow.checkbox_flow_3_right_1.visible = false
                mid_flow.checkbox_flow_3_right_2.visible = false
                bottom_flow.checkbox_flow_4_right_1.visible = false
                bottom_flow.checkbox_flow_4_right_2.visible = false
                inserter_flow.circuit_body_flow_5_button_right.visible = false
                inserter_flow.checkbox_flow_5_flow.visible = false
            end
        end
    end
end)

script.on_event(defines.events.on_gui_closed, function(event)
    local closed_gui_name = event.name
    if event.gui_type == defines.gui_type.custom then
        if closed_gui_name ~= "lm_entity_window" then
            lm_current_entities = {}
        end
    end
end)

script.on_event("lm-e-to-close-gui", function(event)
    local player = game.get_player(event.player_index)
    local screen_flow = player.gui.screen
    local entity_window = screen_flow.lm_entity_window
    local circuit_window = screen_flow.lm_circuit_network_config_window
    entity_window.visible = false
    circuit_window.visible = false
end)

script.on_event("lm-escape-to-close-gui", function(event)
    local player = game.get_player(event.player_index)
    local screen_flow = player.gui.screen
    local entity_window = screen_flow.lm_entity_window
    local circuit_window = screen_flow.lm_circuit_network_config_window
    entity_window.visible = false
    circuit_window.visible = false
end)

script.on_event(defines.events.on_gui_click, function(event)
    local player = game.get_player(event.player_index)
    local screen_flow = player.gui.screen
    local clicked_name = event.element.name
    local main_frame = screen_flow.lm_entity_window
    local circuit_window = screen_flow.lm_circuit_network_config_window
    local circuit_body = circuit_window.circuit_body
    local circuit_body_image_container = circuit_body.circuit_body_image_container
    local circuit_body_image_container_flow = circuit_body_image_container.circuit_body_image_container_flow
    local chest_flow = circuit_body_image_container_flow.circuit_body_flow_1
    local top_flow = circuit_body_image_container_flow.circuit_body_flow_2
    local mid_flow = circuit_body_image_container_flow.circuit_body_flow_3
    local bottom_flow = circuit_body_image_container_flow.circuit_body_flow_4
    local inserter_flow = circuit_body_image_container_flow.circuit_body_flow_5
    for _, entity in pairs(lm_current_entities) do
        if clicked_name == "lm_entity_button" and entity.name == string.match(entity.name, "logistic.*") then
            if player.can_reach_entity(entity) then
                player.opened = entity
                main_frame.visible = false
            else
                player.print("Not close enough to access this machine.")
            end
        elseif clicked_name == "lm_requester_chest_button" and entity.name == "assembling-requester" then
            if player.can_reach_entity(entity) then
                player.opened = entity
                main_frame.visible = false
                circuit_window.visible = false
            else
                player.print("Not close enough to access this chest.")
            end
        elseif clicked_name == "lm_requester_chest_inserter_button" and entity.name == string.match(entity.name, "invisible%-inserter%-1.*") then
            if player.can_reach_entity(entity) then
                player.opened = entity
                main_frame.visible = false
                circuit_window.visible = false
            else
                player.print("Not close enough to access this inserter.")
            end
        elseif clicked_name == "lm_provider_chest_button" and entity.name == "assembling-provider" then
            if player.can_reach_entity(entity) then
                player.opened = entity
                main_frame.visible = false
                circuit_window.visible = false
            else
                player.print("Not close enough to access this chest.")
            end
        elseif clicked_name == "lm_provider_chest_inserter_button" and entity.name == string.match(entity.name, "invisible%-inserter%-2.*") then
            if player.can_reach_entity(entity) then
                player.opened = entity
                main_frame.visible = false
                circuit_window.visible = false
            else
                player.print("Not close enough to access this inserter.")
            end
        elseif clicked_name == "lm_circuit_button" then
            circuit_window.visible = true
            circuit_window.auto_center = true
            main_frame.visible = false
            if connection_checker("assembling-requester", "invisible-substation", "red") == true then
                top_flow.checkbox_flow_2_left_1.lm_cb_top_left_1.state = true
                circuit_body_image_container.lm_wire_rc_to_sub_red.sprite = "lm_wire_rc_to_sub_red_connected"
            else
                top_flow.checkbox_flow_2_left_1.lm_cb_top_left_1.state = false
                circuit_body_image_container.lm_wire_rc_to_sub_red.sprite = "lm_wire_rc_to_sub_red_disconnected"
            end
            if connection_checker("assembling-requester", "invisible-substation", "green") == true then
                top_flow.checkbox_flow_2_left_2.lm_cb_top_left_2.state = true
                circuit_body_image_container.lm_wire_rc_to_sub_green.sprite = "lm_wire_rc_to_sub_green_connected"
            else
                top_flow.checkbox_flow_2_left_2.lm_cb_top_left_2.state = false
                circuit_body_image_container.lm_wire_rc_to_sub_green.sprite = "lm_wire_rc_to_sub_green_disconnected"
            end
            if connection_checker("assembling-provider", "invisible-substation", "red") == true then
                top_flow.checkbox_flow_2_right_1.lm_cb_top_right_1.state = true
                circuit_body_image_container.lm_wire_pc_to_sub_red.sprite = "lm_wire_pc_to_sub_red_connected"
            else
                top_flow.checkbox_flow_2_right_1.lm_cb_top_right_1.state = false
                circuit_body_image_container.lm_wire_pc_to_sub_red.sprite = "lm_wire_pc_to_sub_red_disconnected"
            end
            if connection_checker("assembling-provider", "invisible-substation", "green") == true then
                top_flow.checkbox_flow_2_right_2.lm_cb_top_right_2.state = true
                circuit_body_image_container.lm_wire_pc_to_sub_green.sprite = "lm_wire_pc_to_sub_green_connected"
            else
                top_flow.checkbox_flow_2_right_2.lm_cb_top_right_2.state = false
                circuit_body_image_container.lm_wire_pc_to_sub_green.sprite = "lm_wire_pc_to_sub_green_disconnected"
            end
            if connection_checker(get_requester_inserter_name(), "invisible-substation", "red") == true then
                bottom_flow.checkbox_flow_4_left_1.lm_cb_bottom_left_1.state = true
                circuit_body_image_container.lm_wire_rci_to_sub_red.sprite = "lm_wire_rci_to_sub_red_connected"
            else
                bottom_flow.checkbox_flow_4_left_1.lm_cb_bottom_left_1.state = false
                circuit_body_image_container.lm_wire_rci_to_sub_red.sprite = "lm_wire_rci_to_sub_red_disconnected"
            end
            if connection_checker(get_requester_inserter_name(), "invisible-substation", "green") == true then
                bottom_flow.checkbox_flow_4_left_2.lm_cb_bottom_left_2.state = true
                circuit_body_image_container.lm_wire_rci_to_sub_green.sprite = "lm_wire_rci_to_sub_green_connected"
            else
                bottom_flow.checkbox_flow_4_left_2.lm_cb_bottom_left_2.state = false
                circuit_body_image_container.lm_wire_rci_to_sub_green.sprite = "lm_wire_rci_to_sub_green_disconnected"
            end
            if connection_checker(get_provider_inserter_name(), "invisible-substation", "red") == true then
                bottom_flow.checkbox_flow_4_right_1.lm_cb_bottom_right_1.state = true
                circuit_body_image_container.lm_wire_pci_to_sub_red.sprite = "lm_wire_pci_to_sub_red_connected"
            else
                bottom_flow.checkbox_flow_4_right_1.lm_cb_bottom_right_1.state = false
                circuit_body_image_container.lm_wire_pci_to_sub_red.sprite = "lm_wire_pci_to_sub_red_disconnected"
            end
            if connection_checker(get_provider_inserter_name(), "invisible-substation", "green") == true then
                bottom_flow.checkbox_flow_4_right_2.lm_cb_bottom_right_2.state = true
                circuit_body_image_container.lm_wire_pci_to_sub_green.sprite = "lm_wire_pci_to_sub_green_connected"
            else
                bottom_flow.checkbox_flow_4_right_2.lm_cb_bottom_right_2.state = false
                circuit_body_image_container.lm_wire_pci_to_sub_green.sprite = "lm_wire_pci_to_sub_green_disconnected"
            end
            if connection_checker("assembling-requester", "assembling-provider", "red") == true then
                chest_flow.checkbox_flow_1_flow.lm_cb_chest_connect_1.state = true
                circuit_body_image_container.lm_wire_rc_to_pc_red.sprite = "lm_wire_rc_to_pc_red_connected"
            else
                chest_flow.checkbox_flow_1_flow.lm_cb_chest_connect_1.state = false
                circuit_body_image_container.lm_wire_rc_to_pc_red.sprite = "lm_wire_rc_to_pc_red_disconnected"
            end
            if connection_checker("assembling-requester", "assembling-provider", "green") == true then
                chest_flow.checkbox_flow_1_flow.lm_cb_chest_connect_2.state = true
                circuit_body_image_container.lm_wire_rc_to_pc_green.sprite = "lm_wire_rc_to_pc_green_connected"
            else
                chest_flow.checkbox_flow_1_flow.lm_cb_chest_connect_2.state = false
                circuit_body_image_container.lm_wire_rc_to_pc_green.sprite = "lm_wire_rc_to_pc_green_disconnected"
            end
            if connection_checker("assembling-requester", get_requester_inserter_name(), "red") == true then
                mid_flow.checkbox_flow_3_left_1.lm_cb_mid_left_1.state = true
                circuit_body_image_container.lm_wire_rc_to_rci_red.sprite = "lm_wire_rc_to_rci_red_connected"
            else
                mid_flow.checkbox_flow_3_left_1.lm_cb_mid_left_1.state = false
                circuit_body_image_container.lm_wire_rc_to_rci_red.sprite = "lm_wire_rc_to_rci_red_disconnected"
            end
            if connection_checker("assembling-requester", get_requester_inserter_name(), "green") == true then
                mid_flow.checkbox_flow_3_left_2.lm_cb_mid_left_2.state = true
                circuit_body_image_container.lm_wire_rc_to_rci_green.sprite = "lm_wire_rc_to_rci_green_connected"
            else
                mid_flow.checkbox_flow_3_left_2.lm_cb_mid_left_2.state = false
                circuit_body_image_container.lm_wire_rc_to_rci_green.sprite = "lm_wire_rc_to_rci_green_disconnected"
            end
            if connection_checker("assembling-provider", get_provider_inserter_name(), "red") == true then
                mid_flow.checkbox_flow_3_right_1.lm_cb_mid_right_1.state = true
                circuit_body_image_container.lm_wire_pc_to_pci_red.sprite = "lm_wire_pc_to_pci_red_connected"
            else
                mid_flow.checkbox_flow_3_right_1.lm_cb_mid_right_1.state = false
                circuit_body_image_container.lm_wire_pc_to_pci_red.sprite = "lm_wire_pc_to_pci_red_disconnected"
            end
            if connection_checker("assembling-provider", get_provider_inserter_name(), "green") == true then
                mid_flow.checkbox_flow_3_right_2.lm_cb_mid_right_2.state = true
                circuit_body_image_container.lm_wire_pc_to_pci_green.sprite = "lm_wire_pc_to_pci_green_connected"
            else
                mid_flow.checkbox_flow_3_right_2.lm_cb_mid_right_2.state = false
                circuit_body_image_container.lm_wire_pc_to_pci_green.sprite = "lm_wire_pc_to_pci_green_disconnected"
            end
            if connection_checker(get_requester_inserter_name(), get_provider_inserter_name(), "red") == true then
                inserter_flow.checkbox_flow_5_flow.lm_cb_inserter_connect_1.state = true
                circuit_body_image_container.lm_wire_rci_to_pci_red.sprite = "lm_wire_rci_to_pci_red_connected"
            else
                inserter_flow.checkbox_flow_5_flow.lm_cb_inserter_connect_1.state = false
                circuit_body_image_container.lm_wire_rci_to_pci_red.sprite = "lm_wire_rci_to_pci_red_disconnected"
            end
            if connection_checker(get_requester_inserter_name(), get_provider_inserter_name(), "green") == true then
                inserter_flow.checkbox_flow_5_flow.lm_cb_inserter_connect_2.state = true
                circuit_body_image_container.lm_wire_rci_to_pci_green.sprite = "lm_wire_rci_to_pci_green_connected"
            else
                inserter_flow.checkbox_flow_5_flow.lm_cb_inserter_connect_2.state = false
                circuit_body_image_container.lm_wire_rci_to_pci_green.sprite = "lm_wire_rci_to_pci_green_disconnected"
            end
        elseif clicked_name == "lm_main_close_button" then
            lm_current_entities = {}
            gui_regen(player)
        elseif clicked_name == "lm_circuit_close_button" then
            lm_current_entities = {}
            gui_regen(player)
        end
    end
end)

local function wire_connection(entity_1_name, wire_color, entity_2_name)
    get_entity_by_name(entity_1_name).connect_neighbour({ wire = defines.wire_type[wire_color], target_entity = get_entity_by_name(entity_2_name) })
end

local function wire_disconnection(entity_1_name, wire_color, entity_2_name)
    get_entity_by_name(entity_1_name).disconnect_neighbour({ wire = defines.wire_type[wire_color], target_entity = get_entity_by_name(entity_2_name) })
end

script.on_event(defines.events.on_gui_checked_state_changed, function(event)
    local checked_name = event.element.name
    local player = game.get_player(event.player_index)
    local screen_flow = player.gui.screen
    local circuit_window = screen_flow.lm_circuit_network_config_window
    local circuit_body = circuit_window.circuit_body
    local circuit_body_image_container = circuit_body.circuit_body_image_container
    local circuit_body_image_container_flow = circuit_body_image_container.circuit_body_image_container_flow
    local chest_flow = circuit_body_image_container_flow.circuit_body_flow_1
    local top_flow = circuit_body_image_container_flow.circuit_body_flow_2
    local mid_flow = circuit_body_image_container_flow.circuit_body_flow_3
    local bottom_flow = circuit_body_image_container_flow.circuit_body_flow_4
    local inserter_flow = circuit_body_image_container_flow.circuit_body_flow_5
    local requester_inserter = get_requester_inserter_name()
    local provider_inserter = get_provider_inserter_name()
    if checked_name == "lm_cb_top_left_1" then
        if top_flow.checkbox_flow_2_left_1.lm_cb_top_left_1.state == true then
            wire_connection("assembling-requester", "red", "invisible-substation")
            circuit_body_image_container.lm_wire_rc_to_sub_red.sprite = "lm_wire_rc_to_sub_red_connected"
        else
            wire_disconnection("assembling-requester", "red", "invisible-substation")
            circuit_body_image_container.lm_wire_rc_to_sub_red.sprite = "lm_wire_rc_to_sub_red_disconnected"
        end
    elseif checked_name == "lm_cb_top_left_2" then
        if top_flow.checkbox_flow_2_left_2.lm_cb_top_left_2.state == true then
            wire_connection("assembling-requester", "green", "invisible-substation")
            circuit_body_image_container.lm_wire_rc_to_sub_green.sprite = "lm_wire_rc_to_sub_green_connected"
        else
            wire_disconnection("assembling-requester", "green", "invisible-substation")
            circuit_body_image_container.lm_wire_rc_to_sub_green.sprite = "lm_wire_rc_to_sub_green_disconnected"
        end
    elseif checked_name == "lm_cb_top_right_1" then
        if top_flow.checkbox_flow_2_right_1.lm_cb_top_right_1.state == true then
            wire_connection("assembling-provider", "red", "invisible-substation")
            circuit_body_image_container.lm_wire_pc_to_sub_red.sprite = "lm_wire_pc_to_sub_red_connected"
        else
            wire_disconnection("assembling-provider", "red", "invisible-substation")
            circuit_body_image_container.lm_wire_pc_to_sub_red.sprite = "lm_wire_pc_to_sub_red_disconnected"
        end
    elseif checked_name == "lm_cb_top_right_2" then
        if top_flow.checkbox_flow_2_right_2.lm_cb_top_right_2.state == true then
            wire_connection("assembling-provider", "green", "invisible-substation")
            circuit_body_image_container.lm_wire_pc_to_sub_green.sprite = "lm_wire_pc_to_sub_green_connected"
        else
            wire_disconnection("assembling-provider", "green", "invisible-substation")
            circuit_body_image_container.lm_wire_pc_to_sub_green.sprite = "lm_wire_pc_to_sub_green_disconnected"
        end
    elseif checked_name == "lm_cb_bottom_left_1" then
        if bottom_flow.checkbox_flow_4_left_1.lm_cb_bottom_left_1.state == true then
            wire_connection(requester_inserter, "red", "invisible-substation")
            circuit_body_image_container.lm_wire_rci_to_sub_red.sprite = "lm_wire_rci_to_sub_red_connected"
        else
            wire_disconnection(requester_inserter, "red", "invisible-substation")
            circuit_body_image_container.lm_wire_rci_to_sub_red.sprite = "lm_wire_rci_to_sub_red_disconnected"
        end
    elseif checked_name == "lm_cb_bottom_left_2" then
        if bottom_flow.checkbox_flow_4_left_2.lm_cb_bottom_left_2.state == true then
            wire_connection(requester_inserter, "green", "invisible-substation")
            circuit_body_image_container.lm_wire_rci_to_sub_green.sprite = "lm_wire_rci_to_sub_green_connected"
        else
            wire_disconnection(requester_inserter, "green", "invisible-substation")
            circuit_body_image_container.lm_wire_rci_to_sub_green.sprite = "lm_wire_rci_to_sub_green_disconnected"
        end
    elseif checked_name == "lm_cb_bottom_right_1" then
        if bottom_flow.checkbox_flow_4_right_1.lm_cb_bottom_right_1.state == true then
            wire_connection(provider_inserter, "red", "invisible-substation")
            circuit_body_image_container.lm_wire_pci_to_sub_red.sprite = "lm_wire_pci_to_sub_red_connected"
        else
            wire_disconnection(provider_inserter, "red", "invisible-substation")
            circuit_body_image_container.lm_wire_pci_to_sub_red.sprite = "lm_wire_pci_to_sub_red_disconnected"
        end
    elseif checked_name == "lm_cb_bottom_right_2" then
        if bottom_flow.checkbox_flow_4_right_2.lm_cb_bottom_right_2.state == true then
            wire_connection(provider_inserter, "green", "invisible-substation")
            circuit_body_image_container.lm_wire_pci_to_sub_green.sprite = "lm_wire_pci_to_sub_green_connected"
        else
            wire_disconnection(provider_inserter, "green", "invisible-substation")
            circuit_body_image_container.lm_wire_pci_to_sub_green.sprite = "lm_wire_pci_to_sub_green_disconnected"
        end
    elseif checked_name == "lm_cb_chest_connect_1" then
        if chest_flow.checkbox_flow_1_flow.lm_cb_chest_connect_1.state == true then
            wire_connection("assembling-requester", "red", "assembling-provider")
            circuit_body_image_container.lm_wire_rc_to_pc_red.sprite = "lm_wire_rc_to_pc_red_connected"
        else
            wire_disconnection("assembling-requester", "red", "assembling-provider")
            circuit_body_image_container.lm_wire_rc_to_pc_red.sprite = "lm_wire_rc_to_pc_red_disconnected"
        end
    elseif checked_name == "lm_cb_chest_connect_2" then
        if chest_flow.checkbox_flow_1_flow.lm_cb_chest_connect_2.state == true then
            wire_connection("assembling-requester", "green", "assembling-provider")
            circuit_body_image_container.lm_wire_rc_to_pc_green.sprite = "lm_wire_rc_to_pc_green_connected"
        else
            wire_disconnection("assembling-requester", "green", "assembling-provider")
            circuit_body_image_container.lm_wire_rc_to_pc_green.sprite = "lm_wire_rc_to_pc_green_disconnected"
        end
    elseif checked_name == "lm_cb_mid_left_1" then
        if mid_flow.checkbox_flow_3_left_1.lm_cb_mid_left_1.state == true then
            wire_connection("assembling-requester", "red", requester_inserter)
            circuit_body_image_container.lm_wire_rc_to_rci_red.sprite = "lm_wire_rc_to_rci_red_connected"
        else
            wire_disconnection("assembling-requester", "red", requester_inserter)
            circuit_body_image_container.lm_wire_rc_to_rci_red.sprite = "lm_wire_rc_to_rci_red_disconnected"
        end
    elseif checked_name == "lm_cb_mid_left_2" then
        if mid_flow.checkbox_flow_3_left_2.lm_cb_mid_left_2.state == true then
            wire_connection("assembling-requester", "green", requester_inserter)
            circuit_body_image_container.lm_wire_rc_to_rci_green.sprite = "lm_wire_rc_to_rci_green_connected"
        else
            wire_disconnection("assembling-requester", "green", requester_inserter)
            circuit_body_image_container.lm_wire_rc_to_rci_green.sprite = "lm_wire_rc_to_rci_green_disconnected"
        end
    elseif checked_name == "lm_cb_mid_right_1" then
        if mid_flow.checkbox_flow_3_right_1.lm_cb_mid_right_1.state == true then
            wire_connection("assembling-provider", "red", provider_inserter)
            circuit_body_image_container.lm_wire_pc_to_pci_red.sprite = "lm_wire_pc_to_pci_red_connected"
        else
            wire_disconnection("assembling-provider", "red", provider_inserter)
            circuit_body_image_container.lm_wire_pc_to_pci_red.sprite = "lm_wire_pc_to_pci_red_disconnected"
        end
    elseif checked_name == "lm_cb_mid_right_2" then
        if mid_flow.checkbox_flow_3_right_2.lm_cb_mid_right_2.state == true then
            wire_connection("assembling-provider", "green", provider_inserter)
            circuit_body_image_container.lm_wire_pc_to_pci_green.sprite = "lm_wire_pc_to_pci_green_connected"
        else
            wire_disconnection("assembling-provider", "green", provider_inserter)
            circuit_body_image_container.lm_wire_pc_to_pci_green.sprite = "lm_wire_pc_to_pci_green_disconnected"
        end
    elseif checked_name == "lm_cb_inserter_connect_1" then
        if inserter_flow.checkbox_flow_5_flow.lm_cb_inserter_connect_1.state == true then
            wire_connection(requester_inserter, "red", provider_inserter)
            circuit_body_image_container.lm_wire_rci_to_pci_red.sprite = "lm_wire_rci_to_pci_red_connected"
        else
            wire_disconnection(requester_inserter, "red", provider_inserter)
            circuit_body_image_container.lm_wire_rci_to_pci_red.sprite = "lm_wire_rci_to_pci_red_disconnected"
        end
    elseif checked_name == "lm_cb_inserter_connect_2" then
        if inserter_flow.checkbox_flow_5_flow.lm_cb_inserter_connect_2.state == true then
            wire_connection(requester_inserter, "green", provider_inserter)
            circuit_body_image_container.lm_wire_rci_to_pci_green.sprite = "lm_wire_rci_to_pci_green_connected"
        else
            wire_disconnection(requester_inserter, "green", provider_inserter)
            circuit_body_image_container.lm_wire_rci_to_pci_green.sprite = "lm_wire_rci_to_pci_green_disconnected"
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
